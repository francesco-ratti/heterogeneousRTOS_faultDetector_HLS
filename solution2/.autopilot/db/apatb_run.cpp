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
#define AUTOTB_TVIN_errorInTask "../tv/cdatafile/c.run.autotvin_errorInTask.dat"
#define AUTOTB_TVOUT_errorInTask "../tv/cdatafile/c.run.autotvout_errorInTask.dat"
#define AUTOTB_TVIN_outcomeInRam "../tv/cdatafile/c.run.autotvin_outcomeInRam.dat"
#define AUTOTB_TVOUT_outcomeInRam "../tv/cdatafile/c.run.autotvout_outcomeInRam.dat"
#define AUTOTB_TVIN_testStream "../tv/cdatafile/c.run.autotvin_testStream.dat"
#define AUTOTB_TVOUT_testStream "../tv/cdatafile/c.run.autotvout_testStream.dat"
#define WRAPC_STREAM_SIZE_IN_testStream "../tv/stream_size/stream_size_in_testStream.dat"
#define WRAPC_STREAM_INGRESS_STATUS_testStream "../tv/stream_size/stream_ingress_status_testStream.dat"
#define AUTOTB_TVIN_trainStream "../tv/cdatafile/c.run.autotvin_trainStream.dat"
#define AUTOTB_TVOUT_trainStream "../tv/cdatafile/c.run.autotvout_trainStream.dat"
#define WRAPC_STREAM_SIZE_IN_trainStream "../tv/stream_size/stream_size_in_trainStream.dat"
#define WRAPC_STREAM_INGRESS_STATUS_trainStream "../tv/stream_size/stream_ingress_status_trainStream.dat"
#define AUTOTB_TVIN_trainedRegions "../tv/cdatafile/c.run.autotvin_trainedRegions.dat"
#define AUTOTB_TVOUT_trainedRegions "../tv/cdatafile/c.run.autotvout_trainedRegions.dat"
#define AUTOTB_TVIN_n_regions_in "../tv/cdatafile/c.run.autotvin_n_regions_in.dat"
#define AUTOTB_TVOUT_n_regions_in "../tv/cdatafile/c.run.autotvout_n_regions_in.dat"
#define AUTOTB_TVIN_toScheduler "../tv/cdatafile/c.run.autotvin_toScheduler.dat"
#define AUTOTB_TVOUT_toScheduler "../tv/cdatafile/c.run.autotvout_toScheduler.dat"
#define WRAPC_STREAM_SIZE_OUT_toScheduler "../tv/stream_size/stream_size_out_toScheduler.dat"
#define WRAPC_STREAM_EGRESS_STATUS_toScheduler "../tv/stream_size/stream_egress_status_toScheduler.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_errorInTask "../tv/rtldatafile/rtl.run.autotvout_errorInTask.dat"
#define AUTOTB_TVOUT_PC_outcomeInRam "../tv/rtldatafile/rtl.run.autotvout_outcomeInRam.dat"
#define AUTOTB_TVOUT_PC_testStream "../tv/rtldatafile/rtl.run.autotvout_testStream.dat"
#define AUTOTB_TVOUT_PC_trainStream "../tv/rtldatafile/rtl.run.autotvout_trainStream.dat"
#define AUTOTB_TVOUT_PC_trainedRegions "../tv/rtldatafile/rtl.run.autotvout_trainedRegions.dat"
#define AUTOTB_TVOUT_PC_n_regions_in "../tv/rtldatafile/rtl.run.autotvout_n_regions_in.dat"
#define AUTOTB_TVOUT_PC_toScheduler "../tv/rtldatafile/rtl.run.autotvout_toScheduler.dat"


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
  errorInTask_depth = 0;
  outcomeInRam_depth = 0;
  testStream_depth = 0;
  trainStream_depth = 0;
  trainedRegions_depth = 0;
  n_regions_in_depth = 0;
  toScheduler_depth = 0;
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
  total_list << "{errorInTask " << errorInTask_depth << "}\n";
  total_list << "{outcomeInRam " << outcomeInRam_depth << "}\n";
  total_list << "{testStream " << testStream_depth << "}\n";
  total_list << "{trainStream " << trainStream_depth << "}\n";
  total_list << "{trainedRegions " << trainedRegions_depth << "}\n";
  total_list << "{n_regions_in " << n_regions_in_depth << "}\n";
  total_list << "{toScheduler " << toScheduler_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int errorInTask_depth;
    int outcomeInRam_depth;
    int testStream_depth;
    int trainStream_depth;
    int trainedRegions_depth;
    int n_regions_in_depth;
    int toScheduler_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


struct __cosim_s36__ { char data[36]; };
struct __cosim_s1__ { char data[1]; };
extern "C" void run_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_run_hw(volatile void * __xlx_apatb_param_errorInTask, volatile void * __xlx_apatb_param_outcomeInRam, volatile void * __xlx_apatb_param_testStream, volatile void * __xlx_apatb_param_trainStream, volatile void * __xlx_apatb_param_trainedRegions, volatile void * __xlx_apatb_param_n_regions_in, volatile void * __xlx_apatb_param_toScheduler) {
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
long __xlx_apatb_param_testStream_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_testStream);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_testStream_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_testStream_stream_buf_final_size; ++i)((hls::stream<__cosim_s36__>*)__xlx_apatb_param_testStream)->read();
long __xlx_apatb_param_trainStream_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_trainStream);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_trainStream_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_trainStream_stream_buf_final_size; ++i)((hls::stream<__cosim_s36__>*)__xlx_apatb_param_trainStream)->read();
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
transaction<1> tr(16);
aesl_fh.read(AUTOTB_TVOUT_PC_errorInTask, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<1>((char*)__xlx_apatb_param_errorInTask, 16);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_errorInTask);
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
          std::vector<sc_bv<1> > errorInTask_pc_buffer(16);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              errorInTask_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "errorInTask" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 16; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_errorInTask)[j*1+0] = errorInTask_pc_buffer[i].range(0, 0).to_uint64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<288> tr(16);
aesl_fh.read(AUTOTB_TVOUT_PC_outcomeInRam, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<36>((char*)__xlx_apatb_param_outcomeInRam, 16);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_outcomeInRam);
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
          std::vector<sc_bv<288> > outcomeInRam_pc_buffer(16);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              outcomeInRam_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "outcomeInRam" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 16; j < e; j += 1, ++i) {((int*)(((__cosim_s36__*)__xlx_apatb_param_outcomeInRam) + j))[0*9+0] = outcomeInRam_pc_buffer[i].range(31,0).to_int64();
((int*)(((__cosim_s36__*)__xlx_apatb_param_outcomeInRam) + j))[0*9+1] = outcomeInRam_pc_buffer[i].range(63,32).to_int64();
((int*)(((__cosim_s36__*)__xlx_apatb_param_outcomeInRam) + j))[0*9+2] = outcomeInRam_pc_buffer[i].range(95,64).to_int64();
((int*)(((__cosim_s36__*)__xlx_apatb_param_outcomeInRam) + j))[0*9+3] = outcomeInRam_pc_buffer[i].range(127,96).to_int64();
((int*)(((__cosim_s36__*)__xlx_apatb_param_outcomeInRam) + j))[0*9+4] = outcomeInRam_pc_buffer[i].range(159,128).to_int64();
((int*)(((__cosim_s36__*)__xlx_apatb_param_outcomeInRam) + j))[0*9+5] = outcomeInRam_pc_buffer[i].range(191,160).to_int64();
((int*)(((__cosim_s36__*)__xlx_apatb_param_outcomeInRam) + j))[0*9+6] = outcomeInRam_pc_buffer[i].range(223,192).to_int64();
((int*)(((__cosim_s36__*)__xlx_apatb_param_outcomeInRam) + j))[0*9+7] = outcomeInRam_pc_buffer[i].range(255,224).to_int64();
((int*)(((__cosim_s36__*)__xlx_apatb_param_outcomeInRam) + j))[0*9+8] = outcomeInRam_pc_buffer[i].range(287,256).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_testStream);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_testStream);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_trainStream);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_trainStream);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_toScheduler);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_toScheduler);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_errorInTask = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_errorInTask, 'b');
transaction<1> tr(16);
  __xlx_offset_byte_param_errorInTask = 0*1;
  if (__xlx_apatb_param_errorInTask) {
tr.import<1>((char*)__xlx_apatb_param_errorInTask, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_errorInTask, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.errorInTask_depth);
#else
// print errorInTask Transactions
{
aesl_fh.write(AUTOTB_TVIN_errorInTask, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_errorInTask = 0*1;
if (__xlx_apatb_param_errorInTask) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_errorInTask + i * 1;
std::string s = formatData(pos, 1);
aesl_fh.write(AUTOTB_TVIN_errorInTask, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.errorInTask_depth);
aesl_fh.write(AUTOTB_TVIN_errorInTask, end_str());
}

#endif
unsigned __xlx_offset_byte_param_outcomeInRam = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_outcomeInRam, 'b');
transaction<288> tr(16);
  __xlx_offset_byte_param_outcomeInRam = 0*36;
  if (__xlx_apatb_param_outcomeInRam) {
tr.import<36>((char*)__xlx_apatb_param_outcomeInRam, 16, 0);
  }
aesl_fh.write(AUTOTB_TVIN_outcomeInRam, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.outcomeInRam_depth);
#else
// print outcomeInRam Transactions
{
aesl_fh.write(AUTOTB_TVIN_outcomeInRam, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_outcomeInRam = 0*36;
if (__xlx_apatb_param_outcomeInRam) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_outcomeInRam + i * 36;
std::string s = formatData(pos, 288);
aesl_fh.write(AUTOTB_TVIN_outcomeInRam, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.outcomeInRam_depth);
aesl_fh.write(AUTOTB_TVIN_outcomeInRam, end_str());
}

#endif
std::vector<__cosim_s36__> __xlx_apatb_param_testStream_stream_buf;
{
  while (!((hls::stream<__cosim_s36__>*)__xlx_apatb_param_testStream)->empty())
    __xlx_apatb_param_testStream_stream_buf.push_back(((hls::stream<__cosim_s36__>*)__xlx_apatb_param_testStream)->read());
  for (int i = 0; i < __xlx_apatb_param_testStream_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s36__>*)__xlx_apatb_param_testStream)->write(__xlx_apatb_param_testStream_stream_buf[i]);
  }
long __xlx_apatb_param_testStream_stream_buf_size = ((hls::stream<__cosim_s36__>*)__xlx_apatb_param_testStream)->size();
std::vector<__cosim_s36__> __xlx_apatb_param_trainStream_stream_buf;
{
  while (!((hls::stream<__cosim_s36__>*)__xlx_apatb_param_trainStream)->empty())
    __xlx_apatb_param_trainStream_stream_buf.push_back(((hls::stream<__cosim_s36__>*)__xlx_apatb_param_trainStream)->read());
  for (int i = 0; i < __xlx_apatb_param_trainStream_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s36__>*)__xlx_apatb_param_trainStream)->write(__xlx_apatb_param_trainStream_stream_buf[i]);
  }
long __xlx_apatb_param_trainStream_stream_buf_size = ((hls::stream<__cosim_s36__>*)__xlx_apatb_param_trainStream)->size();
unsigned __xlx_offset_byte_param_trainedRegions = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_trainedRegions, 'b');
transaction<32> tr(24576);
  __xlx_offset_byte_param_trainedRegions = 0*4;
  if (__xlx_apatb_param_trainedRegions) {
tr.import<4>((char*)__xlx_apatb_param_trainedRegions, 24576, 0);
  }
aesl_fh.write(AUTOTB_TVIN_trainedRegions, tr.p, tr.tbytes);
}

  tcl_file.set_num(24576, &tcl_file.trainedRegions_depth);
#else
// print trainedRegions Transactions
{
aesl_fh.write(AUTOTB_TVIN_trainedRegions, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_trainedRegions = 0*4;
if (__xlx_apatb_param_trainedRegions) {
for (size_t i = 0; i < 24576; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_trainedRegions + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_trainedRegions, s);
}
}
}

  tcl_file.set_num(24576, &tcl_file.trainedRegions_depth);
aesl_fh.write(AUTOTB_TVIN_trainedRegions, end_str());
}

#endif
unsigned __xlx_offset_byte_param_n_regions_in = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_n_regions_in, 'b');
transaction<8> tr(64);
  __xlx_offset_byte_param_n_regions_in = 0*1;
  if (__xlx_apatb_param_n_regions_in) {
tr.import<1>((char*)__xlx_apatb_param_n_regions_in, 64, 0);
  }
aesl_fh.write(AUTOTB_TVIN_n_regions_in, tr.p, tr.tbytes);
}

  tcl_file.set_num(64, &tcl_file.n_regions_in_depth);
#else
// print n_regions_in Transactions
{
aesl_fh.write(AUTOTB_TVIN_n_regions_in, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_n_regions_in = 0*1;
if (__xlx_apatb_param_n_regions_in) {
for (size_t i = 0; i < 64; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_n_regions_in + i * 1;
std::string s = formatData(pos, 8);
aesl_fh.write(AUTOTB_TVIN_n_regions_in, s);
}
}
}

  tcl_file.set_num(64, &tcl_file.n_regions_in_depth);
aesl_fh.write(AUTOTB_TVIN_n_regions_in, end_str());
}

#endif
std::vector<__cosim_s1__> __xlx_apatb_param_toScheduler_stream_buf;
long __xlx_apatb_param_toScheduler_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler)->size();
CodeState = CALL_C_DUT;
run_hw_stub_wrapper(__xlx_apatb_param_errorInTask, __xlx_apatb_param_outcomeInRam, __xlx_apatb_param_testStream, __xlx_apatb_param_trainStream, __xlx_apatb_param_trainedRegions, __xlx_apatb_param_n_regions_in, __xlx_apatb_param_toScheduler);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_errorInTask, 'b');
transaction<1> tr(16);
  __xlx_offset_byte_param_errorInTask = 0*1;
  if (__xlx_apatb_param_errorInTask) {
tr.import<1>((char*)__xlx_apatb_param_errorInTask, 16, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_errorInTask, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.errorInTask_depth);
#else
// print errorInTask Transactions
{
aesl_fh.write(AUTOTB_TVOUT_errorInTask, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_errorInTask = 0*1;
if (__xlx_apatb_param_errorInTask) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_errorInTask + i * 1;
std::string s = formatData(pos, 1);
aesl_fh.write(AUTOTB_TVOUT_errorInTask, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.errorInTask_depth);
aesl_fh.write(AUTOTB_TVOUT_errorInTask, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_outcomeInRam, 'b');
transaction<288> tr(16);
  __xlx_offset_byte_param_outcomeInRam = 0*36;
  if (__xlx_apatb_param_outcomeInRam) {
tr.import<36>((char*)__xlx_apatb_param_outcomeInRam, 16, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_outcomeInRam, tr.p, tr.tbytes);
}

  tcl_file.set_num(16, &tcl_file.outcomeInRam_depth);
#else
// print outcomeInRam Transactions
{
aesl_fh.write(AUTOTB_TVOUT_outcomeInRam, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_outcomeInRam = 0*36;
if (__xlx_apatb_param_outcomeInRam) {
for (size_t i = 0; i < 16; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_outcomeInRam + i * 36;
std::string s = formatData(pos, 288);
aesl_fh.write(AUTOTB_TVOUT_outcomeInRam, s);
}
}
}

  tcl_file.set_num(16, &tcl_file.outcomeInRam_depth);
aesl_fh.write(AUTOTB_TVOUT_outcomeInRam, end_str());
}

#endif
long __xlx_apatb_param_testStream_stream_buf_final_size = __xlx_apatb_param_testStream_stream_buf_size - ((hls::stream<__cosim_s36__>*)__xlx_apatb_param_testStream)->size();
// print testStream Transactions
{
aesl_fh.write(AUTOTB_TVIN_testStream, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_testStream_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_testStream_stream_buf.data()+i);
std::string s(formatData(pos, 288));
aesl_fh.write(AUTOTB_TVIN_testStream, s);
}

  tcl_file.set_num(__xlx_apatb_param_testStream_stream_buf_final_size, &tcl_file.testStream_depth);
aesl_fh.write(AUTOTB_TVIN_testStream, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_testStream, begin_str(AESL_transaction));
if (__xlx_apatb_param_testStream_stream_buf_final_size > 0) {
  long testStream_stream_ingress_size = __xlx_apatb_param_testStream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", testStream_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_testStream, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_testStream_stream_buf_final_size; j != e; j++) {
    testStream_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", testStream_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_testStream, __xlx_sprintf_buffer.data());
  }
} else {
  long testStream_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", testStream_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_testStream, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_testStream, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_testStream, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_testStream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_testStream, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_testStream, end_str());
}
long __xlx_apatb_param_trainStream_stream_buf_final_size = __xlx_apatb_param_trainStream_stream_buf_size - ((hls::stream<__cosim_s36__>*)__xlx_apatb_param_trainStream)->size();
// print trainStream Transactions
{
aesl_fh.write(AUTOTB_TVIN_trainStream, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_trainStream_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_trainStream_stream_buf.data()+i);
std::string s(formatData(pos, 288));
aesl_fh.write(AUTOTB_TVIN_trainStream, s);
}

  tcl_file.set_num(__xlx_apatb_param_trainStream_stream_buf_final_size, &tcl_file.trainStream_depth);
aesl_fh.write(AUTOTB_TVIN_trainStream, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_trainStream, begin_str(AESL_transaction));
if (__xlx_apatb_param_trainStream_stream_buf_final_size > 0) {
  long trainStream_stream_ingress_size = __xlx_apatb_param_trainStream_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", trainStream_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_trainStream, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_trainStream_stream_buf_final_size; j != e; j++) {
    trainStream_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", trainStream_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_trainStream, __xlx_sprintf_buffer.data());
  }
} else {
  long trainStream_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", trainStream_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_trainStream, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_trainStream, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_trainStream, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_trainStream_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_trainStream, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_trainStream, end_str());
}
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
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
