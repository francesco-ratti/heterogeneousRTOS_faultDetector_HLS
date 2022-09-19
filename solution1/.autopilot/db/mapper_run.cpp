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
unsigned int ap_apatb_control_cap_bc;
static AESL_RUNTIME_BC __xlx_control_V_size_Reader("../tv/stream_size/stream_size_in_control.dat");
unsigned int ap_apatb_toScheduler_cap_bc;
static AESL_RUNTIME_BC __xlx_toScheduler_V_size_Reader("../tv/stream_size/stream_size_out_toScheduler.dat");
struct __cosim_s4__ { char data[4]; };
struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
struct __cosim_s20__ { char data[32]; };
extern "C" void run(__cosim_s20__*, __cosim_s4__*, int, int, int, int, __cosim_s1__*);
extern "C" void apatb_run_hw(volatile void * __xlx_apatb_param_control, volatile void * __xlx_apatb_param_trainedRegions, volatile void * __xlx_apatb_param_realTaskId, volatile void * __xlx_apatb_param_n_regions_in, volatile void * __xlx_apatb_param_sharedMem, volatile void * __xlx_apatb_param_toScheduler) {
  // Collect __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec
  vector<sc_bv<256> >__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec;
  for (int j = 0, e = 6144; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_trainedRegions)[j*32+31];
    __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_trainedRegions = 6144;
  int __xlx_offset_param_trainedRegions = 0;
  int __xlx_offset_byte_param_trainedRegions = 0*32;
  for (int j = 0, e = 4; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_realTaskId)[j*32+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_realTaskId)[j*32+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_realTaskId)[j*32+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_realTaskId)[j*32+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_realTaskId)[j*32+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_realTaskId)[j*32+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_realTaskId)[j*32+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_realTaskId)[j*32+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_realTaskId)[j*32+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_realTaskId)[j*32+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_realTaskId)[j*32+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_realTaskId)[j*32+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_realTaskId)[j*32+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_realTaskId)[j*32+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_realTaskId)[j*32+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_realTaskId)[j*32+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_realTaskId)[j*32+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_realTaskId)[j*32+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_realTaskId)[j*32+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_realTaskId)[j*32+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_realTaskId)[j*32+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_realTaskId)[j*32+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_realTaskId)[j*32+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_realTaskId)[j*32+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_realTaskId)[j*32+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_realTaskId)[j*32+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_realTaskId)[j*32+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_realTaskId)[j*32+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_realTaskId)[j*32+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_realTaskId)[j*32+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_realTaskId)[j*32+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_realTaskId)[j*32+31];
    __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_realTaskId = 4;
  int __xlx_offset_param_realTaskId = 6144;
  int __xlx_offset_byte_param_realTaskId = 6144*32;
  for (int j = 0, e = 8; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_n_regions_in)[j*32+31];
    __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_n_regions_in = 8;
  int __xlx_offset_param_n_regions_in = 6148;
  int __xlx_offset_byte_param_n_regions_in = 6148*32;
  for (int j = 0, e = 513; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_sharedMem)[j*32+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_sharedMem)[j*32+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_sharedMem)[j*32+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_sharedMem)[j*32+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_sharedMem)[j*32+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_sharedMem)[j*32+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_sharedMem)[j*32+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_sharedMem)[j*32+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_sharedMem)[j*32+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_sharedMem)[j*32+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_sharedMem)[j*32+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_sharedMem)[j*32+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_sharedMem)[j*32+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_sharedMem)[j*32+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_sharedMem)[j*32+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_sharedMem)[j*32+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_sharedMem)[j*32+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_sharedMem)[j*32+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_sharedMem)[j*32+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_sharedMem)[j*32+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_sharedMem)[j*32+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_sharedMem)[j*32+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_sharedMem)[j*32+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_sharedMem)[j*32+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_sharedMem)[j*32+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_sharedMem)[j*32+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_sharedMem)[j*32+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_sharedMem)[j*32+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_sharedMem)[j*32+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_sharedMem)[j*32+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_sharedMem)[j*32+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_sharedMem)[j*32+31];
    __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_sharedMem = 513;
  int __xlx_offset_param_sharedMem = 6156;
  int __xlx_offset_byte_param_sharedMem = 6156*32;
  __cosim_s20__* __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer= new __cosim_s20__[__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.size()];
  for (int i = 0; i < __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec.size(); ++i) {
    ((long long*)__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer)[i*4+0] = __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer)[i*4+1] = __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer)[i*4+2] = __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer)[i*4+3] = __xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__tmp_vec[i].range(255, 192).to_uint64();
  }
  // collect __xlx_control_tmp_vec
  unsigned __xlx_control_V_tmp_Count = 0;
  unsigned __xlx_control_V_read_Size = __xlx_control_V_size_Reader.read_size();
  vector<__cosim_s4__> __xlx_control_tmp_vec;
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_control)->empty() && __xlx_control_V_tmp_Count < __xlx_control_V_read_Size) {
    __xlx_control_tmp_vec.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_control)->read());
    __xlx_control_V_tmp_Count++;
  }
  ap_apatb_control_cap_bc = __xlx_control_tmp_vec.size();
  // store input buffer
  __cosim_s4__* __xlx_control_input_buffer= new __cosim_s4__[__xlx_control_tmp_vec.size()];
  for (int i = 0; i < __xlx_control_tmp_vec.size(); ++i) {
    __xlx_control_input_buffer[i] = __xlx_control_tmp_vec[i];
  }
  //Create input buffer for toScheduler
  ap_apatb_toScheduler_cap_bc = __xlx_toScheduler_V_size_Reader.read_size();
  __cosim_s1__* __xlx_toScheduler_input_buffer= new __cosim_s1__[ap_apatb_toScheduler_cap_bc];
  // DUT call
  run(__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer, __xlx_control_input_buffer, __xlx_offset_byte_param_trainedRegions, __xlx_offset_byte_param_realTaskId, __xlx_offset_byte_param_n_regions_in, __xlx_offset_byte_param_sharedMem, __xlx_toScheduler_input_buffer);
// print __xlx_apatb_param_trainedRegions
  sc_bv<256>*__xlx_trainedRegions_output_buffer = new sc_bv<256>[__xlx_size_param_trainedRegions];
  for (int i = 0; i < __xlx_size_param_trainedRegions; ++i) {
    char* start = (char*)(&(__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer[__xlx_offset_param_trainedRegions]));
    __xlx_trainedRegions_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_trainedRegions_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_trainedRegions_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_trainedRegions_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_trainedRegions; ++i) {
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+0] = __xlx_trainedRegions_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+1] = __xlx_trainedRegions_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+2] = __xlx_trainedRegions_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+3] = __xlx_trainedRegions_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+4] = __xlx_trainedRegions_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+5] = __xlx_trainedRegions_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+6] = __xlx_trainedRegions_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+7] = __xlx_trainedRegions_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+8] = __xlx_trainedRegions_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+9] = __xlx_trainedRegions_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+10] = __xlx_trainedRegions_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+11] = __xlx_trainedRegions_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+12] = __xlx_trainedRegions_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+13] = __xlx_trainedRegions_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+14] = __xlx_trainedRegions_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+15] = __xlx_trainedRegions_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+16] = __xlx_trainedRegions_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+17] = __xlx_trainedRegions_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+18] = __xlx_trainedRegions_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+19] = __xlx_trainedRegions_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+20] = __xlx_trainedRegions_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+21] = __xlx_trainedRegions_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+22] = __xlx_trainedRegions_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+23] = __xlx_trainedRegions_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+24] = __xlx_trainedRegions_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+25] = __xlx_trainedRegions_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+26] = __xlx_trainedRegions_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+27] = __xlx_trainedRegions_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+28] = __xlx_trainedRegions_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+29] = __xlx_trainedRegions_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+30] = __xlx_trainedRegions_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*32+31] = __xlx_trainedRegions_output_buffer[i].range(255, 248).to_uint();
  }
// print __xlx_apatb_param_realTaskId
  sc_bv<256>*__xlx_realTaskId_output_buffer = new sc_bv<256>[__xlx_size_param_realTaskId];
  for (int i = 0; i < __xlx_size_param_realTaskId; ++i) {
    char* start = (char*)(&(__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer[__xlx_offset_param_realTaskId]));
    __xlx_realTaskId_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_realTaskId_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_realTaskId_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_realTaskId_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_realTaskId; ++i) {
    ((char*)__xlx_apatb_param_realTaskId)[i*32+0] = __xlx_realTaskId_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+1] = __xlx_realTaskId_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+2] = __xlx_realTaskId_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+3] = __xlx_realTaskId_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+4] = __xlx_realTaskId_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+5] = __xlx_realTaskId_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+6] = __xlx_realTaskId_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+7] = __xlx_realTaskId_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+8] = __xlx_realTaskId_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+9] = __xlx_realTaskId_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+10] = __xlx_realTaskId_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+11] = __xlx_realTaskId_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+12] = __xlx_realTaskId_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+13] = __xlx_realTaskId_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+14] = __xlx_realTaskId_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+15] = __xlx_realTaskId_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+16] = __xlx_realTaskId_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+17] = __xlx_realTaskId_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+18] = __xlx_realTaskId_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+19] = __xlx_realTaskId_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+20] = __xlx_realTaskId_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+21] = __xlx_realTaskId_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+22] = __xlx_realTaskId_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+23] = __xlx_realTaskId_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+24] = __xlx_realTaskId_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+25] = __xlx_realTaskId_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+26] = __xlx_realTaskId_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+27] = __xlx_realTaskId_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+28] = __xlx_realTaskId_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+29] = __xlx_realTaskId_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+30] = __xlx_realTaskId_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_realTaskId)[i*32+31] = __xlx_realTaskId_output_buffer[i].range(255, 248).to_uint();
  }
// print __xlx_apatb_param_n_regions_in
  sc_bv<256>*__xlx_n_regions_in_output_buffer = new sc_bv<256>[__xlx_size_param_n_regions_in];
  for (int i = 0; i < __xlx_size_param_n_regions_in; ++i) {
    char* start = (char*)(&(__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer[__xlx_offset_param_n_regions_in]));
    __xlx_n_regions_in_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_n_regions_in_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_n_regions_in_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_n_regions_in_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_n_regions_in; ++i) {
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+0] = __xlx_n_regions_in_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+1] = __xlx_n_regions_in_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+2] = __xlx_n_regions_in_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+3] = __xlx_n_regions_in_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+4] = __xlx_n_regions_in_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+5] = __xlx_n_regions_in_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+6] = __xlx_n_regions_in_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+7] = __xlx_n_regions_in_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+8] = __xlx_n_regions_in_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+9] = __xlx_n_regions_in_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+10] = __xlx_n_regions_in_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+11] = __xlx_n_regions_in_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+12] = __xlx_n_regions_in_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+13] = __xlx_n_regions_in_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+14] = __xlx_n_regions_in_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+15] = __xlx_n_regions_in_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+16] = __xlx_n_regions_in_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+17] = __xlx_n_regions_in_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+18] = __xlx_n_regions_in_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+19] = __xlx_n_regions_in_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+20] = __xlx_n_regions_in_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+21] = __xlx_n_regions_in_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+22] = __xlx_n_regions_in_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+23] = __xlx_n_regions_in_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+24] = __xlx_n_regions_in_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+25] = __xlx_n_regions_in_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+26] = __xlx_n_regions_in_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+27] = __xlx_n_regions_in_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+28] = __xlx_n_regions_in_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+29] = __xlx_n_regions_in_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+30] = __xlx_n_regions_in_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_n_regions_in)[i*32+31] = __xlx_n_regions_in_output_buffer[i].range(255, 248).to_uint();
  }
// print __xlx_apatb_param_sharedMem
  sc_bv<256>*__xlx_sharedMem_output_buffer = new sc_bv<256>[__xlx_size_param_sharedMem];
  for (int i = 0; i < __xlx_size_param_sharedMem; ++i) {
    char* start = (char*)(&(__xlx_trainedRegions_realTaskId_n_regions_in_sharedMem__input_buffer[__xlx_offset_param_sharedMem]));
    __xlx_sharedMem_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_sharedMem_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_sharedMem_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_sharedMem_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_sharedMem; ++i) {
    ((char*)__xlx_apatb_param_sharedMem)[i*32+0] = __xlx_sharedMem_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+1] = __xlx_sharedMem_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+2] = __xlx_sharedMem_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+3] = __xlx_sharedMem_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+4] = __xlx_sharedMem_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+5] = __xlx_sharedMem_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+6] = __xlx_sharedMem_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+7] = __xlx_sharedMem_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+8] = __xlx_sharedMem_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+9] = __xlx_sharedMem_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+10] = __xlx_sharedMem_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+11] = __xlx_sharedMem_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+12] = __xlx_sharedMem_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+13] = __xlx_sharedMem_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+14] = __xlx_sharedMem_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+15] = __xlx_sharedMem_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+16] = __xlx_sharedMem_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+17] = __xlx_sharedMem_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+18] = __xlx_sharedMem_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+19] = __xlx_sharedMem_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+20] = __xlx_sharedMem_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+21] = __xlx_sharedMem_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+22] = __xlx_sharedMem_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+23] = __xlx_sharedMem_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+24] = __xlx_sharedMem_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+25] = __xlx_sharedMem_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+26] = __xlx_sharedMem_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+27] = __xlx_sharedMem_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+28] = __xlx_sharedMem_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+29] = __xlx_sharedMem_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+30] = __xlx_sharedMem_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_sharedMem)[i*32+31] = __xlx_sharedMem_output_buffer[i].range(255, 248).to_uint();
  }
  for (unsigned i = 0; i <ap_apatb_toScheduler_cap_bc; ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler)->write(__xlx_toScheduler_input_buffer[i]);
}
