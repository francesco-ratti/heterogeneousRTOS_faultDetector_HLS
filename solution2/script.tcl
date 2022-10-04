############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project detector_solid
set_top run
add_files detector_solid/region.h
add_files detector_solid/parameters.h
add_files detector_solid/abs_solid_detector.cpp
open_solution "solution2" -flow_target vitis
set_part {xc7z020-clg484-1}
create_clock -period 18 -name default
config_export -display_name faultDetectorMicro -format ip_catalog -output /home/francesco/workspace/ip_repo -rtl verilog -vivado_clock 20
config_interface -m_axi_addr64=0 -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
source "./detector_solid/solution2/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output /home/francesco/workspace/ip_repo
