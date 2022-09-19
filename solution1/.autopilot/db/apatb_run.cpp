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
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.run.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.run.autotvout_gmem.dat"
// wrapc file define:
#define AUTOTB_TVIN_control "../tv/cdatafile/c.run.autotvin_control.dat"
#define AUTOTB_TVOUT_control "../tv/cdatafile/c.run.autotvout_control.dat"
#define WRAPC_STREAM_SIZE_IN_control "../tv/stream_size/stream_size_in_control.dat"
#define WRAPC_STREAM_INGRESS_STATUS_control "../tv/stream_size/stream_ingress_status_control.dat"
// wrapc file define:
#define AUTOTB_TVIN_trainedRegions "../tv/cdatafile/c.run.autotvin_trainedRegions.dat"
#define AUTOTB_TVOUT_trainedRegions "../tv/cdatafile/c.run.autotvout_trainedRegions.dat"
// wrapc file define:
#define AUTOTB_TVIN_realTaskId "../tv/cdatafile/c.run.autotvin_realTaskId.dat"
#define AUTOTB_TVOUT_realTaskId "../tv/cdatafile/c.run.autotvout_realTaskId.dat"
// wrapc file define:
#define AUTOTB_TVIN_n_regions_in "../tv/cdatafile/c.run.autotvin_n_regions_in.dat"
#define AUTOTB_TVOUT_n_regions_in "../tv/cdatafile/c.run.autotvout_n_regions_in.dat"
// wrapc file define:
#define AUTOTB_TVIN_sharedMem "../tv/cdatafile/c.run.autotvin_sharedMem.dat"
#define AUTOTB_TVOUT_sharedMem "../tv/cdatafile/c.run.autotvout_sharedMem.dat"
// wrapc file define:
#define AUTOTB_TVIN_toScheduler "../tv/cdatafile/c.run.autotvin_toScheduler.dat"
#define AUTOTB_TVOUT_toScheduler "../tv/cdatafile/c.run.autotvout_toScheduler.dat"
#define WRAPC_STREAM_SIZE_OUT_toScheduler "../tv/stream_size/stream_size_out_toScheduler.dat"
#define WRAPC_STREAM_EGRESS_STATUS_toScheduler "../tv/stream_size/stream_egress_status_toScheduler.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.run.autotvout_gmem.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_control "../tv/rtldatafile/rtl.run.autotvout_control.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_trainedRegions "../tv/rtldatafile/rtl.run.autotvout_trainedRegions.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_realTaskId "../tv/rtldatafile/rtl.run.autotvout_realTaskId.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_n_regions_in "../tv/rtldatafile/rtl.run.autotvout_n_regions_in.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_sharedMem "../tv/rtldatafile/rtl.run.autotvout_sharedMem.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_toScheduler "../tv/rtldatafile/rtl.run.autotvout_toScheduler.dat"


inline void rev_endian(char* p, size_t nbytes)
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

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
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
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem_depth = 0;
  control_depth = 0;
  trainedRegions_depth = 0;
  realTaskId_depth = 0;
  n_regions_in_depth = 0;
  sharedMem_depth = 0;
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
  total_list << "{gmem " << gmem_depth << "}\n";
  total_list << "{control " << control_depth << "}\n";
  total_list << "{trainedRegions " << trainedRegions_depth << "}\n";
  total_list << "{realTaskId " << realTaskId_depth << "}\n";
  total_list << "{n_regions_in " << n_regions_in_depth << "}\n";
  total_list << "{sharedMem " << sharedMem_depth << "}\n";
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
    int gmem_depth;
    int control_depth;
    int trainedRegions_depth;
    int realTaskId_depth;
    int n_regions_in_depth;
    int sharedMem_depth;
    int toScheduler_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
struct __cosim_s4__ { char data[4]; };
struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
struct __cosim_s20__ { char data[32]; };
extern "C" void run_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_run_hw(volatile void * __xlx_apatb_param_control, volatile void * __xlx_apatb_param_trainedRegions, volatile void * __xlx_apatb_param_realTaskId, volatile void * __xlx_apatb_param_n_regions_in, volatile void * __xlx_apatb_param_sharedMem, volatile void * __xlx_apatb_param_toScheduler) {
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
transaction<256> tr(6669);
aesl_fh.read(AUTOTB_TVOUT_PC_gmem, tr.p, tr.tbytes);
tr.reorder();
tr.send<32>((char*)__xlx_apatb_param_trainedRegions, 6144);
tr.send<32>((char*)__xlx_apatb_param_realTaskId, 4);
tr.send<32>((char*)__xlx_apatb_param_n_regions_in, 8);
tr.send<32>((char*)__xlx_apatb_param_sharedMem, 513);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem);
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
          std::vector<sc_bv<256> > gmem_pc_buffer(6669);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "gmem");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gmem" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 6144; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_trainedRegions)[j*4+0] = gmem_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_trainedRegions)[j*4+1] = gmem_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_trainedRegions)[j*4+2] = gmem_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_trainedRegions)[j*4+3] = gmem_pc_buffer[i].range(255,192).to_int64();
}
            for (int j = 0, e = 4; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_realTaskId)[j*4+0] = gmem_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_realTaskId)[j*4+1] = gmem_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_realTaskId)[j*4+2] = gmem_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_realTaskId)[j*4+3] = gmem_pc_buffer[i].range(255,192).to_int64();
}
            for (int j = 0, e = 8; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_n_regions_in)[j*4+0] = gmem_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_n_regions_in)[j*4+1] = gmem_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_n_regions_in)[j*4+2] = gmem_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_n_regions_in)[j*4+3] = gmem_pc_buffer[i].range(255,192).to_int64();
}
            for (int j = 0, e = 513; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_sharedMem)[j*4+0] = gmem_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_sharedMem)[j*4+1] = gmem_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_sharedMem)[j*4+2] = gmem_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_sharedMem)[j*4+3] = gmem_pc_buffer[i].range(255,192).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
long __xlx_apatb_param_control_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_control);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_control_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_control_stream_buf_final_size; ++i)((hls::stream<__cosim_s4__>*)__xlx_apatb_param_control)->read();
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

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "toScheduler");
  
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
__cosim_s1__ xlx_stream_elt;
((char*)&xlx_stream_elt)[0*1+0] = toScheduler_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler)->write(xlx_stream_elt);
}
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
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_control);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_control);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_toScheduler);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_toScheduler);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_trainedRegions = 0;
unsigned __xlx_offset_byte_param_realTaskId = 0;
unsigned __xlx_offset_byte_param_n_regions_in = 0;
unsigned __xlx_offset_byte_param_sharedMem = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem, 'b');
transaction<256> tr(6669);
  __xlx_offset_byte_param_trainedRegions = 0*32;
  if (__xlx_apatb_param_trainedRegions) {
tr.import<32>((char*)__xlx_apatb_param_trainedRegions, 6144, 0);
  }
  __xlx_offset_byte_param_realTaskId = 6144*32;
  if (__xlx_apatb_param_realTaskId) {
tr.import<32>((char*)__xlx_apatb_param_realTaskId, 4, 0);
  }
  __xlx_offset_byte_param_n_regions_in = 6148*32;
  if (__xlx_apatb_param_n_regions_in) {
tr.import<32>((char*)__xlx_apatb_param_n_regions_in, 8, 0);
  }
  __xlx_offset_byte_param_sharedMem = 6156*32;
  if (__xlx_apatb_param_sharedMem) {
tr.import<32>((char*)__xlx_apatb_param_sharedMem, 513, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_gmem, tr.p, tr.tbytes);
}

  tcl_file.set_num(6669, &tcl_file.gmem_depth);
#else
// print gmem Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_trainedRegions = 0*32;
  if (__xlx_apatb_param_trainedRegions) {
    for (int j = 0  - 0, e = 6144 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_trainedRegions)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_trainedRegions)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_trainedRegions)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_trainedRegions)[j*4+3];
aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
  __xlx_offset_byte_param_realTaskId = 6144*32;
  if (__xlx_apatb_param_realTaskId) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_realTaskId)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_realTaskId)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_realTaskId)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_realTaskId)[j*4+3];
aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
  __xlx_offset_byte_param_n_regions_in = 6148*32;
  if (__xlx_apatb_param_n_regions_in) {
    for (int j = 0  - 0, e = 8 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_n_regions_in)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_n_regions_in)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_n_regions_in)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_n_regions_in)[j*4+3];
aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
  __xlx_offset_byte_param_sharedMem = 6156*32;
  if (__xlx_apatb_param_sharedMem) {
    for (int j = 0  - 0, e = 513 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_sharedMem)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_sharedMem)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_sharedMem)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_sharedMem)[j*4+3];
aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(6669, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVIN_gmem, end_str());
}

#endif
std::vector<__cosim_s4__> __xlx_apatb_param_control_stream_buf;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_control)->empty())
    __xlx_apatb_param_control_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_control)->read());
  for (int i = 0; i < __xlx_apatb_param_control_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_control)->write(__xlx_apatb_param_control_stream_buf[i]);
  }
long __xlx_apatb_param_control_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_control)->size();
// print trainedRegions Transactions
{
aesl_fh.write(AUTOTB_TVIN_trainedRegions, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_trainedRegions;
aesl_fh.write(AUTOTB_TVIN_trainedRegions, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.trainedRegions_depth);
aesl_fh.write(AUTOTB_TVIN_trainedRegions, end_str());
}

// print realTaskId Transactions
{
aesl_fh.write(AUTOTB_TVIN_realTaskId, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_realTaskId;
aesl_fh.write(AUTOTB_TVIN_realTaskId, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.realTaskId_depth);
aesl_fh.write(AUTOTB_TVIN_realTaskId, end_str());
}

// print n_regions_in Transactions
{
aesl_fh.write(AUTOTB_TVIN_n_regions_in, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_n_regions_in;
aesl_fh.write(AUTOTB_TVIN_n_regions_in, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.n_regions_in_depth);
aesl_fh.write(AUTOTB_TVIN_n_regions_in, end_str());
}

// print sharedMem Transactions
{
aesl_fh.write(AUTOTB_TVIN_sharedMem, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_sharedMem;
aesl_fh.write(AUTOTB_TVIN_sharedMem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.sharedMem_depth);
aesl_fh.write(AUTOTB_TVIN_sharedMem, end_str());
}

std::vector<__cosim_s1__> __xlx_apatb_param_toScheduler_stream_buf;
long __xlx_apatb_param_toScheduler_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler)->size();
CodeState = CALL_C_DUT;
run_hw_stub_wrapper(__xlx_apatb_param_control, __xlx_apatb_param_trainedRegions, __xlx_apatb_param_realTaskId, __xlx_apatb_param_n_regions_in, __xlx_apatb_param_sharedMem, __xlx_apatb_param_toScheduler);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_gmem, 'b');
transaction<256> tr(6669);
  __xlx_offset_byte_param_trainedRegions = 0*32;
  if (__xlx_apatb_param_trainedRegions) {
tr.import<32>((char*)__xlx_apatb_param_trainedRegions, 6144, 0);
  }
  __xlx_offset_byte_param_realTaskId = 6144*32;
  if (__xlx_apatb_param_realTaskId) {
tr.import<32>((char*)__xlx_apatb_param_realTaskId, 4, 0);
  }
  __xlx_offset_byte_param_n_regions_in = 6148*32;
  if (__xlx_apatb_param_n_regions_in) {
tr.import<32>((char*)__xlx_apatb_param_n_regions_in, 8, 0);
  }
  __xlx_offset_byte_param_sharedMem = 6156*32;
  if (__xlx_apatb_param_sharedMem) {
tr.import<32>((char*)__xlx_apatb_param_sharedMem, 513, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_gmem, tr.p, tr.tbytes);
}

  tcl_file.set_num(6669, &tcl_file.gmem_depth);
#else
// print gmem Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gmem, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_trainedRegions = 0*32;
  if (__xlx_apatb_param_trainedRegions) {
    for (int j = 0  - 0, e = 6144 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_trainedRegions)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_trainedRegions)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_trainedRegions)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_trainedRegions)[j*4+3];
aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
  __xlx_offset_byte_param_realTaskId = 6144*32;
  if (__xlx_apatb_param_realTaskId) {
    for (int j = 0  - 0, e = 4 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_realTaskId)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_realTaskId)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_realTaskId)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_realTaskId)[j*4+3];
aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
  __xlx_offset_byte_param_n_regions_in = 6148*32;
  if (__xlx_apatb_param_n_regions_in) {
    for (int j = 0  - 0, e = 8 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_n_regions_in)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_n_regions_in)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_n_regions_in)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_n_regions_in)[j*4+3];
aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
  __xlx_offset_byte_param_sharedMem = 6156*32;
  if (__xlx_apatb_param_sharedMem) {
    for (int j = 0  - 0, e = 513 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_sharedMem)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_sharedMem)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_sharedMem)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_sharedMem)[j*4+3];
aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(6669, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVOUT_gmem, end_str());
}

#endif
long __xlx_apatb_param_control_stream_buf_final_size = __xlx_apatb_param_control_stream_buf_size - ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_control)->size();
// print control Transactions
{
aesl_fh.write(AUTOTB_TVIN_control, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_control_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv_hw;
sc_bv<32> __xlx_tmp_lv;
__xlx_tmp_lv = ((int*)&__xlx_apatb_param_control_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_control, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_control_stream_buf_final_size, &tcl_file.control_depth);
aesl_fh.write(AUTOTB_TVIN_control, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_control, begin_str(AESL_transaction));
if (__xlx_apatb_param_control_stream_buf_final_size > 0) {
  long control_stream_ingress_size = __xlx_apatb_param_control_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", control_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_control, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_control_stream_buf_final_size; j != e; j++) {
    control_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", control_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_control, __xlx_sprintf_buffer.data());
  }
} else {
  long control_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", control_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_control, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_control, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_control, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_control_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_control, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_control, end_str());
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
for (int j = 0, e = __xlx_apatb_param_toScheduler_stream_buf_final_size; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)&__xlx_apatb_param_toScheduler_stream_buf[__xlx_apatb_param_toScheduler_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_toScheduler, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
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
