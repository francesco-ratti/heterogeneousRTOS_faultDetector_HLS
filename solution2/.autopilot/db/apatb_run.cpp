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
#define AUTOTB_TVIN_accel_mode "../tv/cdatafile/c.run.autotvin_accel_mode.dat"
#define AUTOTB_TVOUT_accel_mode "../tv/cdatafile/c.run.autotvout_accel_mode.dat"
#define AUTOTB_TVIN_copying "../tv/cdatafile/c.run.autotvin_copying.dat"
#define AUTOTB_TVOUT_copying "../tv/cdatafile/c.run.autotvout_copying.dat"
#define AUTOTB_TVIN_inputData "../tv/cdatafile/c.run.autotvin_inputData.dat"
#define AUTOTB_TVOUT_inputData "../tv/cdatafile/c.run.autotvout_inputData.dat"
#define AUTOTB_TVIN_startCopy "../tv/cdatafile/c.run.autotvin_startCopy.dat"
#define AUTOTB_TVOUT_startCopy "../tv/cdatafile/c.run.autotvout_startCopy.dat"
#define AUTOTB_TVIN_errorInTask "../tv/cdatafile/c.run.autotvin_errorInTask.dat"
#define AUTOTB_TVOUT_errorInTask "../tv/cdatafile/c.run.autotvout_errorInTask.dat"
#define AUTOTB_TVIN_outcomeInRam "../tv/cdatafile/c.run.autotvin_outcomeInRam.dat"
#define AUTOTB_TVOUT_outcomeInRam "../tv/cdatafile/c.run.autotvout_outcomeInRam.dat"
#define AUTOTB_TVIN_trainedRegion_i "../tv/cdatafile/c.run.autotvin_trainedRegion_i.dat"
#define AUTOTB_TVOUT_trainedRegion_i "../tv/cdatafile/c.run.autotvout_trainedRegion_i.dat"
#define AUTOTB_TVIN_trainedRegion_o "../tv/cdatafile/c.run.autotvin_trainedRegion_o.dat"
#define AUTOTB_TVOUT_trainedRegion_o "../tv/cdatafile/c.run.autotvout_trainedRegion_o.dat"
#define AUTOTB_TVIN_IOCheckIdx "../tv/cdatafile/c.run.autotvin_IOCheckIdx.dat"
#define AUTOTB_TVOUT_IOCheckIdx "../tv/cdatafile/c.run.autotvout_IOCheckIdx.dat"
#define AUTOTB_TVIN_IORegionIdx "../tv/cdatafile/c.run.autotvin_IORegionIdx.dat"
#define AUTOTB_TVOUT_IORegionIdx "../tv/cdatafile/c.run.autotvout_IORegionIdx.dat"
#define AUTOTB_TVIN_n_regions_in "../tv/cdatafile/c.run.autotvin_n_regions_in.dat"
#define AUTOTB_TVOUT_n_regions_in "../tv/cdatafile/c.run.autotvout_n_regions_in.dat"
#define AUTOTB_TVIN_failedTask "../tv/cdatafile/c.run.autotvin_failedTask.dat"
#define AUTOTB_TVOUT_failedTask "../tv/cdatafile/c.run.autotvout_failedTask.dat"
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.run.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.run.autotvout_gmem.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_accel_mode "../tv/rtldatafile/rtl.run.autotvout_accel_mode.dat"
#define AUTOTB_TVOUT_PC_copying "../tv/rtldatafile/rtl.run.autotvout_copying.dat"
#define AUTOTB_TVOUT_PC_inputData "../tv/rtldatafile/rtl.run.autotvout_inputData.dat"
#define AUTOTB_TVOUT_PC_startCopy "../tv/rtldatafile/rtl.run.autotvout_startCopy.dat"
#define AUTOTB_TVOUT_PC_errorInTask "../tv/rtldatafile/rtl.run.autotvout_errorInTask.dat"
#define AUTOTB_TVOUT_PC_outcomeInRam "../tv/rtldatafile/rtl.run.autotvout_outcomeInRam.dat"
#define AUTOTB_TVOUT_PC_trainedRegion_i "../tv/rtldatafile/rtl.run.autotvout_trainedRegion_i.dat"
#define AUTOTB_TVOUT_PC_trainedRegion_o "../tv/rtldatafile/rtl.run.autotvout_trainedRegion_o.dat"
#define AUTOTB_TVOUT_PC_IOCheckIdx "../tv/rtldatafile/rtl.run.autotvout_IOCheckIdx.dat"
#define AUTOTB_TVOUT_PC_IORegionIdx "../tv/rtldatafile/rtl.run.autotvout_IORegionIdx.dat"
#define AUTOTB_TVOUT_PC_n_regions_in "../tv/rtldatafile/rtl.run.autotvout_n_regions_in.dat"
#define AUTOTB_TVOUT_PC_failedTask "../tv/rtldatafile/rtl.run.autotvout_failedTask.dat"
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
  accel_mode_depth = 0;
  copying_depth = 0;
  inputData_depth = 0;
  startCopy_depth = 0;
  errorInTask_depth = 0;
  outcomeInRam_depth = 0;
  trainedRegion_i_depth = 0;
  trainedRegion_o_depth = 0;
  IOCheckIdx_depth = 0;
  IORegionIdx_depth = 0;
  n_regions_in_depth = 0;
  failedTask_depth = 0;
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
  total_list << "{accel_mode " << accel_mode_depth << "}\n";
  total_list << "{copying " << copying_depth << "}\n";
  total_list << "{inputData " << inputData_depth << "}\n";
  total_list << "{startCopy " << startCopy_depth << "}\n";
  total_list << "{errorInTask " << errorInTask_depth << "}\n";
  total_list << "{outcomeInRam " << outcomeInRam_depth << "}\n";
  total_list << "{trainedRegion_i " << trainedRegion_i_depth << "}\n";
  total_list << "{trainedRegion_o " << trainedRegion_o_depth << "}\n";
  total_list << "{IOCheckIdx " << IOCheckIdx_depth << "}\n";
  total_list << "{IORegionIdx " << IORegionIdx_depth << "}\n";
  total_list << "{n_regions_in " << n_regions_in_depth << "}\n";
  total_list << "{failedTask " << failedTask_depth << "}\n";
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
    int accel_mode_depth;
    int copying_depth;
    int inputData_depth;
    int startCopy_depth;
    int errorInTask_depth;
    int outcomeInRam_depth;
    int trainedRegion_i_depth;
    int trainedRegion_o_depth;
    int IOCheckIdx_depth;
    int IORegionIdx_depth;
    int n_regions_in_depth;
    int failedTask_depth;
    int gmem_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


struct __cosim_s44__ { char data[44]; };
struct __cosim_s36__ { char data[36]; };
struct __cosim_s96__ { char data[96]; };
struct __cosim_s1__ { char data[1]; };
struct __cosim_s2__ { char data[2]; };
struct __cosim_s64__ { char data[64]; };
extern "C" void run_hw_stub_wrapper(char, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, __cosim_s96__*, volatile void *, __cosim_s1__*, __cosim_s1__*, volatile void *, volatile void *);

extern "C" void apatb_run_hw(char __xlx_apatb_param_accel_mode, volatile void * __xlx_apatb_param_copying, volatile void * __xlx_apatb_param_inputData, volatile void * __xlx_apatb_param_startCopy, volatile void * __xlx_apatb_param_errorInTask, volatile void * __xlx_apatb_param_outcomeInRam, __cosim_s96__* __xlx_apatb_param_trainedRegion_i, volatile void * __xlx_apatb_param_trainedRegion_o, __cosim_s1__* __xlx_apatb_param_IOCheckIdx, __cosim_s1__* __xlx_apatb_param_IORegionIdx, volatile void * __xlx_apatb_param_n_regions_in, volatile void * __xlx_apatb_param_failedTask) {
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
#ifdef USE_BINARY_TV_FILE
{
transaction<8> tr(16);
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
          std::vector<sc_bv<8> > errorInTask_pc_buffer(16);
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
            for (int j = 0, e = 16; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_errorInTask)[j*1+0] = errorInTask_pc_buffer[i].range(7, 0).to_int64();
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
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_failedTask);
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
          std::vector<sc_bv<16> > failedTask_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              failedTask_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "failedTask" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_failedTask)[j*2+0] = failedTask_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_failedTask)[j*2+1] = failedTask_pc_buffer[i].range(15, 8).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_copying);
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
          std::vector<sc_bv<8> > copying_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              copying_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "copying" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_copying)[0*1+0] = copying_pc_buffer[0].range(7, 0).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_trainedRegion_o);
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
          std::vector<sc_bv<768> > trainedRegion_o_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              trainedRegion_o_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "trainedRegion_o" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+0] = trainedRegion_o_pc_buffer[0].range(63,0).to_int64();
((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+1] = trainedRegion_o_pc_buffer[0].range(127,64).to_int64();
((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+2] = trainedRegion_o_pc_buffer[0].range(191,128).to_int64();
((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+3] = trainedRegion_o_pc_buffer[0].range(255,192).to_int64();
((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+4] = trainedRegion_o_pc_buffer[0].range(319,256).to_int64();
((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+5] = trainedRegion_o_pc_buffer[0].range(383,320).to_int64();
((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+6] = trainedRegion_o_pc_buffer[0].range(447,384).to_int64();
((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+7] = trainedRegion_o_pc_buffer[0].range(511,448).to_int64();
((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+8] = trainedRegion_o_pc_buffer[0].range(575,512).to_int64();
((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+9] = trainedRegion_o_pc_buffer[0].range(639,576).to_int64();
((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+10] = trainedRegion_o_pc_buffer[0].range(703,640).to_int64();
((long long*)__xlx_apatb_param_trainedRegion_o)[0*12+11] = trainedRegion_o_pc_buffer[0].range(767,704).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_n_regions_in);
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
          std::vector<sc_bv<8> > n_regions_in_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              n_regions_in_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "n_regions_in" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_n_regions_in)[0*1+0] = n_regions_in_pc_buffer[0].range(7, 0).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_inputData = 0;
unsigned __xlx_offset_byte_param_errorInTask = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_errorInTask, 'b');
transaction<8> tr(16);
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
std::string s = formatData(pos, 8);
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
unsigned __xlx_offset_byte_param_failedTask = 0;
// print failedTask Transactions
{
aesl_fh.write(AUTOTB_TVIN_failedTask, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_failedTask = 0*2;
if (__xlx_apatb_param_failedTask) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_failedTask + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVIN_failedTask, s);
}
}
}

  tcl_file.set_num(1, &tcl_file.failedTask_depth);
aesl_fh.write(AUTOTB_TVIN_failedTask, end_str());
}

aesl_fh.touch(AUTOTB_TVIN_gmem);
{
aesl_fh.write(AUTOTB_TVIN_gmem, begin_str(AESL_transaction));
__xlx_offset_byte_param_inputData = 0*64;
if (__xlx_apatb_param_inputData) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_inputData + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
tcl_file.set_num(1, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVIN_gmem, end_str());
}
// print accel_mode Transactions
{
aesl_fh.write(AUTOTB_TVIN_accel_mode, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_accel_mode;
aesl_fh.write(AUTOTB_TVIN_accel_mode, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.accel_mode_depth);
aesl_fh.write(AUTOTB_TVIN_accel_mode, end_str());
}

// print copying Transactions
{
aesl_fh.write(AUTOTB_TVIN_copying, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_copying;
aesl_fh.write(AUTOTB_TVIN_copying, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.copying_depth);
aesl_fh.write(AUTOTB_TVIN_copying, end_str());
}

// print inputData Transactions
{
aesl_fh.write(AUTOTB_TVIN_inputData, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_inputData;
aesl_fh.write(AUTOTB_TVIN_inputData, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.inputData_depth);
aesl_fh.write(AUTOTB_TVIN_inputData, end_str());
}

// print startCopy Transactions
{
aesl_fh.write(AUTOTB_TVIN_startCopy, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_startCopy;
aesl_fh.write(AUTOTB_TVIN_startCopy, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.startCopy_depth);
aesl_fh.write(AUTOTB_TVIN_startCopy, end_str());
}

// print trainedRegion_i Transactions
{
aesl_fh.write(AUTOTB_TVIN_trainedRegion_i, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_trainedRegion_i;
aesl_fh.write(AUTOTB_TVIN_trainedRegion_i, formatData(pos, 768));
}
  tcl_file.set_num(1, &tcl_file.trainedRegion_i_depth);
aesl_fh.write(AUTOTB_TVIN_trainedRegion_i, end_str());
}

// print trainedRegion_o Transactions
{
aesl_fh.write(AUTOTB_TVIN_trainedRegion_o, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_trainedRegion_o;
aesl_fh.write(AUTOTB_TVIN_trainedRegion_o, formatData(pos, 768));
}
  tcl_file.set_num(1, &tcl_file.trainedRegion_o_depth);
aesl_fh.write(AUTOTB_TVIN_trainedRegion_o, end_str());
}

// print IOCheckIdx Transactions
{
aesl_fh.write(AUTOTB_TVIN_IOCheckIdx, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_IOCheckIdx;
aesl_fh.write(AUTOTB_TVIN_IOCheckIdx, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.IOCheckIdx_depth);
aesl_fh.write(AUTOTB_TVIN_IOCheckIdx, end_str());
}

// print IORegionIdx Transactions
{
aesl_fh.write(AUTOTB_TVIN_IORegionIdx, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_IORegionIdx;
aesl_fh.write(AUTOTB_TVIN_IORegionIdx, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.IORegionIdx_depth);
aesl_fh.write(AUTOTB_TVIN_IORegionIdx, end_str());
}

// print n_regions_in Transactions
{
aesl_fh.write(AUTOTB_TVIN_n_regions_in, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_n_regions_in;
aesl_fh.write(AUTOTB_TVIN_n_regions_in, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.n_regions_in_depth);
aesl_fh.write(AUTOTB_TVIN_n_regions_in, end_str());
}

CodeState = CALL_C_DUT;
run_hw_stub_wrapper(__xlx_apatb_param_accel_mode, __xlx_apatb_param_copying, __xlx_apatb_param_inputData, __xlx_apatb_param_startCopy, __xlx_apatb_param_errorInTask, __xlx_apatb_param_outcomeInRam, __xlx_apatb_param_trainedRegion_i, __xlx_apatb_param_trainedRegion_o, __xlx_apatb_param_IOCheckIdx, __xlx_apatb_param_IORegionIdx, __xlx_apatb_param_n_regions_in, __xlx_apatb_param_failedTask);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_errorInTask, 'b');
transaction<8> tr(16);
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
std::string s = formatData(pos, 8);
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
// print failedTask Transactions
{
aesl_fh.write(AUTOTB_TVOUT_failedTask, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_failedTask = 0*2;
if (__xlx_apatb_param_failedTask) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_failedTask + i * 2;
std::string s = formatData(pos, 16);
aesl_fh.write(AUTOTB_TVOUT_failedTask, s);
}
}
}

  tcl_file.set_num(1, &tcl_file.failedTask_depth);
aesl_fh.write(AUTOTB_TVOUT_failedTask, end_str());
}

// print copying Transactions
{
aesl_fh.write(AUTOTB_TVOUT_copying, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_copying;
aesl_fh.write(AUTOTB_TVOUT_copying, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.copying_depth);
aesl_fh.write(AUTOTB_TVOUT_copying, end_str());
}

// print trainedRegion_o Transactions
{
aesl_fh.write(AUTOTB_TVOUT_trainedRegion_o, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_trainedRegion_o;
aesl_fh.write(AUTOTB_TVOUT_trainedRegion_o, formatData(pos, 768));
}
  tcl_file.set_num(1, &tcl_file.trainedRegion_o_depth);
aesl_fh.write(AUTOTB_TVOUT_trainedRegion_o, end_str());
}

// print n_regions_in Transactions
{
aesl_fh.write(AUTOTB_TVOUT_n_regions_in, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_n_regions_in;
aesl_fh.write(AUTOTB_TVOUT_n_regions_in, formatData(pos, 8));
}
  tcl_file.set_num(1, &tcl_file.n_regions_in_depth);
aesl_fh.write(AUTOTB_TVOUT_n_regions_in, end_str());
}

CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
