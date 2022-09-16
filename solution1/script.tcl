############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project detector_solid
set_top main
add_files detector_solid/abs_solid_detector.cpp
add_files detector_solid/parameters.h
add_files detector_solid/region.h
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg484-1}
create_clock -period 20 -name default
config_export -format ip_catalog -rtl verilog -vivado_clock 20
#source "./detector_solid/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
