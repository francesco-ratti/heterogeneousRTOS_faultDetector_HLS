#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_toScheduler_cap_bc;
static AESL_RUNTIME_BC __xlx_toScheduler_V_size_Reader("../tv/stream_size/stream_size_out_toScheduler.dat");
struct __cosim_s4__ { char data[4]; };
struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
extern "C" void run(int*, __cosim_s4__, int, int, int, int, __cosim_s1__*);
extern "C" void apatb_run_hw(__cosim_s4__* __xlx_apatb_param_contr, volatile void * __xlx_apatb_param_trainedRegions, volatile void * __xlx_apatb_param_realTaskId, volatile void * __xlx_apatb_param_n_regions_in, volatile void * __xlx_apatb_param_sharedMem, volatile void * __xlx_apatb_param_toScheduler) {
  // Collect __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec
  vector<sc_bv<32> >__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec;
  for (int j = 0, e = 49152; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_trainedRegions)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_trainedRegions)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_trainedRegions)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_trainedRegions)[j*4+3];
    __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_trainedRegions = 49152;
  int __xlx_offset_param_trainedRegions = 0;
  int __xlx_offset_byte_param_trainedRegions = 0*4;
  for (int j = 0, e = 32; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_realTaskId)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_realTaskId)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_realTaskId)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_realTaskId)[j*4+3];
    __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_realTaskId = 32;
  int __xlx_offset_param_realTaskId = 49152;
  int __xlx_offset_byte_param_realTaskId = 49152*4;
  for (int j = 0, e = 64; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_n_regions_in)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_n_regions_in)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_n_regions_in)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_n_regions_in)[j*4+3];
    __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_n_regions_in = 64;
  int __xlx_offset_param_n_regions_in = 49184;
  int __xlx_offset_byte_param_n_regions_in = 49184*4;
  for (int j = 0, e = 4104; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_sharedMem)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_sharedMem)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_sharedMem)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_sharedMem)[j*4+3];
    __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_sharedMem = 4104;
  int __xlx_offset_param_sharedMem = 49248;
  int __xlx_offset_byte_param_sharedMem = 49248*4;
  int* __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer= new int[__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.size()];
  for (int i = 0; i < __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.size(); ++i) {
    __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer[i] = __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec[i].range(31, 0).to_uint64();
  }
  //Create input buffer for toScheduler
  ap_apatb_toScheduler_cap_bc = __xlx_toScheduler_V_size_Reader.read_size();
  __cosim_s1__* __xlx_toScheduler_input_buffer= new __cosim_s1__[ap_apatb_toScheduler_cap_bc];
  // DUT call
  run(__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer, *__xlx_apatb_param_contr, __xlx_offset_byte_param_trainedRegions, __xlx_offset_byte_param_realTaskId, __xlx_offset_byte_param_n_regions_in, __xlx_offset_byte_param_sharedMem, __xlx_toScheduler_input_buffer);
// print __xlx_apatb_param_trainedRegions
  sc_bv<32>*__xlx_trainedRegions_output_buffer = new sc_bv<32>[__xlx_size_param_trainedRegions];
  for (int i = 0; i < __xlx_size_param_trainedRegions; ++i) {
    __xlx_trainedRegions_output_buffer[i] = __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer[i+__xlx_offset_param_trainedRegions];
  }
  for (int i = 0; i < __xlx_size_param_trainedRegions; ++i) {
    ((char*)__xlx_apatb_param_trainedRegions)[i*4+0] = __xlx_trainedRegions_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*4+1] = __xlx_trainedRegions_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*4+2] = __xlx_trainedRegions_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*4+3] = __xlx_trainedRegions_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_realTaskId
  sc_bv<32>*__xlx_realTaskId_output_buffer = new sc_bv<32>[__xlx_size_param_realTaskId];
  for (int i = 0; i < __xlx_size_param_realTaskId; ++i) {
    __xlx_realTaskId_output_buffer[i] = __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer[i+__xlx_offset_param_realTaskId];
  }
  for (int i = 0; i < __xlx_size_param_realTaskId; ++i) {
    ((char*)__xlx_apatb_param_realTaskId)[i*4+0] = __xlx_realTaskId_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*4+1] = __xlx_realTaskId_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*4+2] = __xlx_realTaskId_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*4+3] = __xlx_realTaskId_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_n_regions_in
  sc_bv<32>*__xlx_n_regions_in_output_buffer = new sc_bv<32>[__xlx_size_param_n_regions_in];
  for (int i = 0; i < __xlx_size_param_n_regions_in; ++i) {
    __xlx_n_regions_in_output_buffer[i] = __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer[i+__xlx_offset_param_n_regions_in];
  }
  for (int i = 0; i < __xlx_size_param_n_regions_in; ++i) {
    ((char*)__xlx_apatb_param_n_regions_in)[i*4+0] = __xlx_n_regions_in_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*4+1] = __xlx_n_regions_in_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*4+2] = __xlx_n_regions_in_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*4+3] = __xlx_n_regions_in_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_sharedMem
  sc_bv<32>*__xlx_sharedMem_output_buffer = new sc_bv<32>[__xlx_size_param_sharedMem];
  for (int i = 0; i < __xlx_size_param_sharedMem; ++i) {
    __xlx_sharedMem_output_buffer[i] = __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer[i+__xlx_offset_param_sharedMem];
  }
  for (int i = 0; i < __xlx_size_param_sharedMem; ++i) {
    ((char*)__xlx_apatb_param_sharedMem)[i*4+0] = __xlx_sharedMem_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*4+1] = __xlx_sharedMem_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*4+2] = __xlx_sharedMem_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*4+3] = __xlx_sharedMem_output_buffer[i].range(31, 24).to_uint();
  }
  for (unsigned i = 0; i <ap_apatb_toScheduler_cap_bc; ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler)->write(__xlx_toScheduler_input_buffer[i]);
}
