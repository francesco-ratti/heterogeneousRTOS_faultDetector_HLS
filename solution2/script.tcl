############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project detector_solid
set_top run
add_files detector_solid/abs_solid_detector.cpp
add_files detector_solid/parameters.h
add_files detector_solid/region.h
open_solution "solution2" -flow_target vitis
set_part {xc7z020-clg484-1}
create_clock -period 20 -name default
source "./detector_solid/solution2/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
