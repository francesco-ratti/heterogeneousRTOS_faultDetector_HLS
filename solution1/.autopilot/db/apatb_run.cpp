#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_contr "../tv/cdatafile/c.run.autotvin_contr.dat"
#define AUTOTB_TVOUT_contr "../tv/cdatafile/c.run.autotvout_contr.dat"
#define AUTOTB_TVIN_trainedRegions "../tv/cdatafile/c.run.autotvin_trainedRegions.dat"
#define AUTOTB_TVOUT_trainedRegions "../tv/cdatafile/c.run.autotvout_trainedRegions.dat"
#define AUTOTB_TVIN_realTaskId "../tv/cdatafile/c.run.autotvin_realTaskId.dat"
#define AUTOTB_TVOUT_realTaskId "../tv/cdatafile/c.run.autotvout_realTaskId.dat"
#define AUTOTB_TVIN_n_regions_in "../tv/cdatafile/c.run.autotvin_n_regions_in.dat"
#define AUTOTB_TVOUT_n_regions_in "../tv/cdatafile/c.run.autotvout_n_regions_in.dat"
#define AUTOTB_TVIN_sharedMem "../tv/cdatafile/c.run.autotvin_sharedMem.dat"
#define AUTOTB_TVOUT_sharedMem "../tv/cdatafile/c.run.autotvout_sharedMem.dat"
#define AUTOTB_TVIN_toScheduler "../tv/cdatafile/c.run.autotvin_toScheduler.dat"
#define AUTOTB_TVOUT_toScheduler "../tv/cdatafile/c.run.autotvout_toScheduler.dat"
#define WRAPC_STREAM_SIZE_OUT_toScheduler "../tv/stream_size/stream_size_out_toScheduler.dat"
#define WRAPC_STREAM_EGRESS_STATUS_toScheduler "../tv/stream_size/stream_egress_status_toScheduler.dat"
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.run.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.run.autotvout_gmem.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_contr "../tv/rtldatafile/rtl.run.autotvout_contr.dat"
#define AUTOTB_TVOUT_PC_trainedRegions "../tv/rtldatafile/rtl.run.autotvout_trainedRegions.dat"
#define AUTOTB_TVOUT_PC_realTaskId "../tv/rtldatafile/rtl.run.autotvout_realTaskId.dat"
#define AUTOTB_TVOUT_PC_n_regions_in "../tv/rtldatafile/rtl.run.autotvout_n_regions_in.dat"
#define AUTOTB_TVOUT_PC_sharedMem "../tv/rtldatafile/rtl.run.autotvout_sharedMem.dat"
#define AUTOTB_TVOUT_PC_toScheduler "../tv/rtldatafile/rtl.run.autotvout_toScheduler.dat"
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.run.autotvout_gmem.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  contr_depth = 0;
  trainedRegions_depth = 0;
  realTaskId_depth = 0;
  n_regions_in_depth = 0;
  sharedMem_depth = 0;
  toScheduler_depth = 0;
  gmem_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{contr " << contr_depth << "}\n";
  total_list << "{trainedRegions " << trainedRegions_depth << "}\n";
  total_list << "{realTaskId " << realTaskId_depth << "}\n";
  total_list << "{n_regions_in " << n_regions_in_depth << "}\n";
  total_list << "{sharedMem " << sharedMem_depth << "}\n";
  total_list << "{toScheduler " << toScheduler_depth << "}\n";
  total_list << "{gmem " << gmem_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int contr_depth;
    int trainedRegions_depth;
    int realTaskId_depth;
    int n_regions_in_depth;
    int sharedMem_depth;
    int toScheduler_depth;
    int gmem_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


struct __cosim_s4__ { char data[4]; };
struct __cosim_s1__ { char data[1]; };
struct __cosim_s2__ { char data[2]; };
struct __cosim_s32__ { char data[32]; };
extern "C" void run_hw_stub_wrapper(__cosim_s4__*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_run_hw(__cosim_s4__* __xlx_apatb_param_contr, volatile void * __xlx_apatb_param_trainedRegions, volatile void * __xlx_apatb_param_realTaskId, volatile void * __xlx_apatb_param_n_regions_in, volatile void * __xlx_apatb_param_sharedMem, volatile void * __xlx_apatb_param_toScheduler) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_toScheduler_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_toScheduler);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_toScheduler_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_toScheduler);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > toScheduler_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              toScheduler_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "toScheduler" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = toScheduler_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #ifdef USE_BINARY_TV_FILE
{
transaction<256> tr(513);
aesl_fh.read(AUTOTB_TVOUT_PC_gmem, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<32>((char*)__xlx_apatb_param_sharedMem, 513, 0);
}
#else
try {
static PostCheck<256> pc(AUTOTB_TVOUT_PC_gmem);
pc.psize = 32;
pc.param = (char*)__xlx_apatb_param_sharedMem;
pc.depth = 513;
pc.run(AESL_transaction_pc, 0);
} catch (SimException &e) {
  std::cout << "at line " << e.line << " occurred exception, " << e.msg << "\n";
}
#endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_toScheduler);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_toScheduler);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_sharedMem = 0;
unsigned __xlx_offset_byte_param_trainedRegions = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_trainedRegions, 'b');
transaction<32> tr(49152);
  __xlx_offset_byte_param_trainedRegions = 0*4;
  if (__xlx_apatb_param_trainedRegions) {
tr.import<4>((char*)__xlx_apatb_param_trainedRegions, 49152, 0);
  }
aesl_fh.write(AUTOTB_TVIN_trainedRegions, tr.p, tr.tbytes);
}

  tcl_file.set_num(49152, &tcl_file.trainedRegions_depth);
#else
// print trainedRegions Transactions
{
aesl_fh.write(AUTOTB_TVIN_trainedRegions, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_trainedRegions = 0*4;
if (__xlx_apatb_param_trainedRegions) {
for (size_t i = 0; i < 49152; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_trainedRegions + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_trainedRegions, s);
}
}
}

  tcl_file.set_num(49152, &tcl_file.trainedRegions_depth);
aesl_fh.write(AUTOTB_TVIN_trainedRegions, end_str());
}

#endif
unsigned __xlx_offset_byte_param_realTaskId = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_realTaskId, 'b');
transaction<8> tr(128);
  __xlx_offset_byte_param_realTaskId = 0*1;
  if (__xlx_apatb_param_realTaskId) {
tr.import<1>((char*)__xlx_apatb_param_realTaskId, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_realTaskId, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.realTaskId_depth);
#else
// print realTaskId Transactions
{
aesl_fh.write(AUTOTB_TVIN_realTaskId, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_realTaskId = 0*1;
if (__xlx_apatb_param_realTaskId) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_realTaskId + i * 1;
std::string s = formatData(pos, 8);
aesl_fh.write(AUTOTB_TVIN_realTaskId, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.realTaskId_depth);
aesl_fh.write(AUTOTB_TVIN_realTaskId, end_str());
}

#endif
unsigned __xlx_offset_byte_param_n_regions_in = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_n_regions_in, 'b');
transaction<16> tr(128);
  __xlx_offset_byte_param_n_regions_in = 0*2;
  if (__xlx_apatb_param_n_regions_in) {
tr.import<2>((char*)__xlx_apatb_param_n_regions_in, 128, 0);
  }
aesl_fh.write(AUTOTB_TVIN_n_regions_in, tr.p, tr.tbytes);
}

  tcl_file.set_num(128, &tcl_file.n_regions_in_depth);
#else
// print n_regions_in Transactions
{
aesl_fh.write(AUTOTB_TVIN_n_regions_in, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_n_regions_in = 0*2;
if (__xlx_apatb_param_n_regions_in) {
for (size_t i = 0; i < 128; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_n_regions_in + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVIN_n_regions_in, s);
}
}
}

  tcl_file.set_num(128, &tcl_file.n_regions_in_depth);
aesl_fh.write(AUTOTB_TVIN_n_regions_in, end_str());
}

#endif
std::vector<__cosim_s1__> __xlx_apatb_param_toScheduler_stream_buf;
long __xlx_apatb_param_toScheduler_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler)->size();
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem, 'b');
transaction<256> tr(513);
__xlx_offset_byte_param_sharedMem = 0*32;
if (__xlx_apatb_param_sharedMem) {
  tr.import<32>((char*)__xlx_apatb_param_sharedMem, 513, 0);
}
aesl_fh.write(AUTOTB_TVIN_gmem, tr.p, tr.tbytes);
tcl_file.set_num(513, &tcl_file.gmem_depth);
}
#else
aesl_fh.touch(AUTOTB_TVIN_gmem);
{
aesl_fh.write(AUTOTB_TVIN_gmem, begin_str(AESL_transaction));
__xlx_offset_byte_param_sharedMem = 0*32;
if (__xlx_apatb_param_sharedMem) {
for (size_t i = 0; i < 513; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_sharedMem + i * 32;
std::string s = formatData(pos, 256);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
tcl_file.set_num(513, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVIN_gmem, end_str());
}
#endif
// print contr Transactions
{
aesl_fh.write(AUTOTB_TVIN_contr, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_contr;
aesl_fh.write(AUTOTB_TVIN_contr, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.contr_depth);
aesl_fh.write(AUTOTB_TVIN_contr, end_str());
}

// print sharedMem Transactions
{
aesl_fh.write(AUTOTB_TVIN_sharedMem, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_sharedMem;
aesl_fh.write(AUTOTB_TVIN_sharedMem, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.sharedMem_depth);
aesl_fh.write(AUTOTB_TVIN_sharedMem, end_str());
}

CodeState = CALL_C_DUT;
run_hw_stub_wrapper(__xlx_apatb_param_contr, __xlx_apatb_param_trainedRegions, __xlx_apatb_param_realTaskId, __xlx_apatb_param_n_regions_in, __xlx_apatb_param_sharedMem, __xlx_apatb_param_toScheduler);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_toScheduler_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler)->size() - __xlx_apatb_param_toScheduler_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler)->empty())
    __xlx_apatb_param_toScheduler_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler)->read());
  for (int i = 0; i < __xlx_apatb_param_toScheduler_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler)->write(__xlx_apatb_param_toScheduler_stream_buf[i]);
  }
// print toScheduler Transactions
{
aesl_fh.write(AUTOTB_TVOUT_toScheduler, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_toScheduler_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_toScheduler_stream_buf.data()+__xlx_apatb_param_toScheduler_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_toScheduler, s);
}

  tcl_file.set_num(__xlx_apatb_param_toScheduler_stream_buf_final_size, &tcl_file.toScheduler_depth);
aesl_fh.write(AUTOTB_TVOUT_toScheduler, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_toScheduler, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_toScheduler_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_toScheduler, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_toScheduler, end_str());
}
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_gmem, 'b');
transaction<256> tr(513);
__xlx_offset_byte_param_sharedMem = 0*32;
if (__xlx_apatb_param_sharedMem) {
  tr.import<32>((char*)__xlx_apatb_param_sharedMem, 513, 0);
}
aesl_fh.write(AUTOTB_TVOUT_gmem, tr.p, tr.tbytes);
tcl_file.set_num(513, &tcl_file.gmem_depth);
}
#else
aesl_fh.touch(AUTOTB_TVOUT_gmem);
{
aesl_fh.write(AUTOTB_TVOUT_gmem, begin_str(AESL_transaction));
__xlx_offset_byte_param_sharedMem = 0*32;
if (__xlx_apatb_param_sharedMem) {
for (size_t i = 0; i < 513; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_sharedMem + i * 32;
std::string s = formatData(pos, 256);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
tcl_file.set_num(513, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVOUT_gmem, end_str());
}
#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
