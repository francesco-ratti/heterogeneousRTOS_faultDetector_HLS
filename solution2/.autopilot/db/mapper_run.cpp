#include <systemc>
#include <list>
#include <map>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;

namespace bcsim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(1<<10)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
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
unsigned int ap_apatb_testStream_cap_bc;
static AESL_RUNTIME_BC __xlx_testStream_V_size_Reader("../tv/stream_size/stream_size_in_testStream.dat");
unsigned int ap_apatb_trainStream_cap_bc;
static AESL_RUNTIME_BC __xlx_trainStream_V_size_Reader("../tv/stream_size/stream_size_in_trainStream.dat");
unsigned int ap_apatb_toScheduler_cap_bc;
static AESL_RUNTIME_BC __xlx_toScheduler_V_size_Reader("../tv/stream_size/stream_size_out_toScheduler.dat");
struct __cosim_s36__ { char data[36]; };
struct __cosim_s40__ { char data[40]; };
struct __cosim_s1__ { char data[1]; };
struct __cosim_s64__ { char data[64]; };
extern "C" void run(char*, __cosim_s64__*, __cosim_s40__*, __cosim_s40__*, int*, char*, __cosim_s1__*);
extern "C" void apatb_run_hw(volatile void * __xlx_apatb_param_errorInTask, volatile void * __xlx_apatb_param_outcomeInRam, volatile void * __xlx_apatb_param_testStream, volatile void * __xlx_apatb_param_trainStream, volatile void * __xlx_apatb_param_trainedRegions, volatile void * __xlx_apatb_param_n_regions_in, volatile void * __xlx_apatb_param_toScheduler) {
  // Collect __xlx_errorInTask__tmp_vec
  vector<sc_bv<1> >__xlx_errorInTask__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    __xlx_errorInTask__tmp_vec.push_back(((char*)__xlx_apatb_param_errorInTask)[j]);
  }
  int __xlx_size_param_errorInTask = 16;
  int __xlx_offset_param_errorInTask = 0;
  int __xlx_offset_byte_param_errorInTask = 0*1;
  char* __xlx_errorInTask__input_buffer= new char[__xlx_errorInTask__tmp_vec.size()];
  for (int i = 0; i < __xlx_errorInTask__tmp_vec.size(); ++i) {
    __xlx_errorInTask__input_buffer[i] = __xlx_errorInTask__tmp_vec[i].range(0, 0).to_uint64();
  }
  // Collect __xlx_outcomeInRam__tmp_vec
  vector<sc_bv<288> >__xlx_outcomeInRam__tmp_vec;
  for (int j = 0, e = 16; j != e; ++j) {
    sc_bv<288> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+7];
    _xlx_tmp_sc.range(71, 64) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+8];
    _xlx_tmp_sc.range(79, 72) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+9];
    _xlx_tmp_sc.range(87, 80) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+10];
    _xlx_tmp_sc.range(95, 88) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+11];
    _xlx_tmp_sc.range(103, 96) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+12];
    _xlx_tmp_sc.range(111, 104) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+13];
    _xlx_tmp_sc.range(119, 112) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+14];
    _xlx_tmp_sc.range(127, 120) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+15];
    _xlx_tmp_sc.range(135, 128) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+16];
    _xlx_tmp_sc.range(143, 136) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+17];
    _xlx_tmp_sc.range(151, 144) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+18];
    _xlx_tmp_sc.range(159, 152) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+19];
    _xlx_tmp_sc.range(167, 160) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+20];
    _xlx_tmp_sc.range(175, 168) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+21];
    _xlx_tmp_sc.range(183, 176) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+22];
    _xlx_tmp_sc.range(191, 184) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+23];
    _xlx_tmp_sc.range(199, 192) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+24];
    _xlx_tmp_sc.range(207, 200) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+25];
    _xlx_tmp_sc.range(215, 208) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+26];
    _xlx_tmp_sc.range(223, 216) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+27];
    _xlx_tmp_sc.range(231, 224) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+28];
    _xlx_tmp_sc.range(239, 232) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+29];
    _xlx_tmp_sc.range(247, 240) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+30];
    _xlx_tmp_sc.range(255, 248) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+31];
    _xlx_tmp_sc.range(263, 256) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+32];
    _xlx_tmp_sc.range(271, 264) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+33];
    _xlx_tmp_sc.range(279, 272) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+34];
    _xlx_tmp_sc.range(287, 280) = ((char*)__xlx_apatb_param_outcomeInRam)[j*36+35];
    __xlx_outcomeInRam__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_outcomeInRam = 16;
  int __xlx_offset_param_outcomeInRam = 0;
  int __xlx_offset_byte_param_outcomeInRam = 0*36;
  __cosim_s64__* __xlx_outcomeInRam__input_buffer= new __cosim_s64__[__xlx_outcomeInRam__tmp_vec.size()];
  for (int i = 0; i < __xlx_outcomeInRam__tmp_vec.size(); ++i) {
    ((long long*)__xlx_outcomeInRam__input_buffer)[i*5+0] = __xlx_outcomeInRam__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_outcomeInRam__input_buffer)[i*5+1] = __xlx_outcomeInRam__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_outcomeInRam__input_buffer)[i*5+2] = __xlx_outcomeInRam__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_outcomeInRam__input_buffer)[i*5+3] = __xlx_outcomeInRam__tmp_vec[i].range(255, 192).to_uint64();
    ((long long*)__xlx_outcomeInRam__input_buffer)[i*5+4] = __xlx_outcomeInRam__tmp_vec[i].range(287, 256).to_uint64();
  }
auto* stestStream = bcsim::createStream((hls::stream<__cosim_s40__>*)__xlx_apatb_param_testStream);
auto* strainStream = bcsim::createStream((hls::stream<__cosim_s40__>*)__xlx_apatb_param_trainStream);
  // Collect __xlx_trainedRegions__tmp_vec
  vector<sc_bv<32> >__xlx_trainedRegions__tmp_vec;
  for (int j = 0, e = 24576; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_trainedRegions)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_trainedRegions)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_trainedRegions)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_trainedRegions)[j*4+3];
    __xlx_trainedRegions__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_trainedRegions = 24576;
  int __xlx_offset_param_trainedRegions = 0;
  int __xlx_offset_byte_param_trainedRegions = 0*4;
  int* __xlx_trainedRegions__input_buffer= new int[__xlx_trainedRegions__tmp_vec.size()];
  for (int i = 0; i < __xlx_trainedRegions__tmp_vec.size(); ++i) {
    __xlx_trainedRegions__input_buffer[i] = __xlx_trainedRegions__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_n_regions_in__tmp_vec
  vector<sc_bv<8> >__xlx_n_regions_in__tmp_vec;
  for (int j = 0, e = 64; j != e; ++j) {
    __xlx_n_regions_in__tmp_vec.push_back(((char*)__xlx_apatb_param_n_regions_in)[j]);
  }
  int __xlx_size_param_n_regions_in = 64;
  int __xlx_offset_param_n_regions_in = 0;
  int __xlx_offset_byte_param_n_regions_in = 0*1;
  char* __xlx_n_regions_in__input_buffer= new char[__xlx_n_regions_in__tmp_vec.size()];
  for (int i = 0; i < __xlx_n_regions_in__tmp_vec.size(); ++i) {
    __xlx_n_regions_in__input_buffer[i] = __xlx_n_regions_in__tmp_vec[i].range(7, 0).to_uint64();
  }
  //Create input buffer for toScheduler
  ap_apatb_toScheduler_cap_bc = __xlx_toScheduler_V_size_Reader.read_size();
  __cosim_s1__* __xlx_toScheduler_input_buffer= new __cosim_s1__[ap_apatb_toScheduler_cap_bc];
auto* stoScheduler = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler);
  // DUT call
  run(__xlx_errorInTask__input_buffer, __xlx_outcomeInRam__input_buffer, stestStream->data<__cosim_s40__>(), strainStream->data<__cosim_s40__>(), __xlx_trainedRegions__input_buffer, __xlx_n_regions_in__input_buffer, stoScheduler->data<__cosim_s1__>());
// print __xlx_apatb_param_errorInTask
  sc_bv<1>*__xlx_errorInTask_output_buffer = new sc_bv<1>[__xlx_size_param_errorInTask];
  for (int i = 0; i < __xlx_size_param_errorInTask; ++i) {
    __xlx_errorInTask_output_buffer[i] = __xlx_errorInTask__input_buffer[i+__xlx_offset_param_errorInTask];
  }
  for (int i = 0; i < __xlx_size_param_errorInTask; ++i) {
    ((char*)__xlx_apatb_param_errorInTask)[i] = __xlx_errorInTask_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_outcomeInRam
  sc_bv<288>*__xlx_outcomeInRam_output_buffer = new sc_bv<288>[__xlx_size_param_outcomeInRam];
  for (int i = 0; i < __xlx_size_param_outcomeInRam; ++i) {
    char* start = (char*)(&(__xlx_outcomeInRam__input_buffer[__xlx_offset_param_outcomeInRam]));
    __xlx_outcomeInRam_output_buffer[i].range(63, 0) = ((long long*)start)[i*5+0];
    __xlx_outcomeInRam_output_buffer[i].range(127, 64) = ((long long*)start)[i*5+1];
    __xlx_outcomeInRam_output_buffer[i].range(191, 128) = ((long long*)start)[i*5+2];
    __xlx_outcomeInRam_output_buffer[i].range(255, 192) = ((long long*)start)[i*5+3];
    __xlx_outcomeInRam_output_buffer[i].range(287, 256) = ((long long*)start)[i*5+4];
  }
  for (int i = 0; i < __xlx_size_param_outcomeInRam; ++i) {
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+0] = __xlx_outcomeInRam_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+1] = __xlx_outcomeInRam_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+2] = __xlx_outcomeInRam_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+3] = __xlx_outcomeInRam_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+4] = __xlx_outcomeInRam_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+5] = __xlx_outcomeInRam_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+6] = __xlx_outcomeInRam_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+7] = __xlx_outcomeInRam_output_buffer[i].range(63, 56).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+8] = __xlx_outcomeInRam_output_buffer[i].range(71, 64).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+9] = __xlx_outcomeInRam_output_buffer[i].range(79, 72).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+10] = __xlx_outcomeInRam_output_buffer[i].range(87, 80).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+11] = __xlx_outcomeInRam_output_buffer[i].range(95, 88).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+12] = __xlx_outcomeInRam_output_buffer[i].range(103, 96).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+13] = __xlx_outcomeInRam_output_buffer[i].range(111, 104).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+14] = __xlx_outcomeInRam_output_buffer[i].range(119, 112).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+15] = __xlx_outcomeInRam_output_buffer[i].range(127, 120).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+16] = __xlx_outcomeInRam_output_buffer[i].range(135, 128).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+17] = __xlx_outcomeInRam_output_buffer[i].range(143, 136).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+18] = __xlx_outcomeInRam_output_buffer[i].range(151, 144).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+19] = __xlx_outcomeInRam_output_buffer[i].range(159, 152).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+20] = __xlx_outcomeInRam_output_buffer[i].range(167, 160).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+21] = __xlx_outcomeInRam_output_buffer[i].range(175, 168).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+22] = __xlx_outcomeInRam_output_buffer[i].range(183, 176).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+23] = __xlx_outcomeInRam_output_buffer[i].range(191, 184).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+24] = __xlx_outcomeInRam_output_buffer[i].range(199, 192).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+25] = __xlx_outcomeInRam_output_buffer[i].range(207, 200).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+26] = __xlx_outcomeInRam_output_buffer[i].range(215, 208).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+27] = __xlx_outcomeInRam_output_buffer[i].range(223, 216).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+28] = __xlx_outcomeInRam_output_buffer[i].range(231, 224).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+29] = __xlx_outcomeInRam_output_buffer[i].range(239, 232).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+30] = __xlx_outcomeInRam_output_buffer[i].range(247, 240).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+31] = __xlx_outcomeInRam_output_buffer[i].range(255, 248).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+32] = __xlx_outcomeInRam_output_buffer[i].range(263, 256).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+33] = __xlx_outcomeInRam_output_buffer[i].range(271, 264).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+34] = __xlx_outcomeInRam_output_buffer[i].range(279, 272).to_uint();
    ((char*)__xlx_apatb_param_outcomeInRam)[i*36+35] = __xlx_outcomeInRam_output_buffer[i].range(287, 280).to_uint();
  }
stestStream->transfer((hls::stream<__cosim_s40__>*)__xlx_apatb_param_testStream);
strainStream->transfer((hls::stream<__cosim_s40__>*)__xlx_apatb_param_trainStream);
// print __xlx_apatb_param_trainedRegions
  sc_bv<32>*__xlx_trainedRegions_output_buffer = new sc_bv<32>[__xlx_size_param_trainedRegions];
  for (int i = 0; i < __xlx_size_param_trainedRegions; ++i) {
    __xlx_trainedRegions_output_buffer[i] = __xlx_trainedRegions__input_buffer[i+__xlx_offset_param_trainedRegions];
  }
  for (int i = 0; i < __xlx_size_param_trainedRegions; ++i) {
    ((char*)__xlx_apatb_param_trainedRegions)[i*4+0] = __xlx_trainedRegions_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*4+1] = __xlx_trainedRegions_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*4+2] = __xlx_trainedRegions_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_trainedRegions)[i*4+3] = __xlx_trainedRegions_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_n_regions_in
  sc_bv<8>*__xlx_n_regions_in_output_buffer = new sc_bv<8>[__xlx_size_param_n_regions_in];
  for (int i = 0; i < __xlx_size_param_n_regions_in; ++i) {
    __xlx_n_regions_in_output_buffer[i] = __xlx_n_regions_in__input_buffer[i+__xlx_offset_param_n_regions_in];
  }
  for (int i = 0; i < __xlx_size_param_n_regions_in; ++i) {
    ((char*)__xlx_apatb_param_n_regions_in)[i] = __xlx_n_regions_in_output_buffer[i].to_uint();
  }
stoScheduler->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_toScheduler);
}
