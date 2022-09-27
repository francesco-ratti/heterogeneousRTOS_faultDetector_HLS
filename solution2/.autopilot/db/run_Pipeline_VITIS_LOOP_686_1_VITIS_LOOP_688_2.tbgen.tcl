set moduleName run_Pipeline_VITIS_LOOP_686_1_VITIS_LOOP_688_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {run_Pipeline_VITIS_LOOP_686_1_VITIS_LOOP_688_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ trainedRegions int 32 regular {array 24576 { 1 } 1 1 }  }
	{ regions float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_16 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_32 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_1 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_17 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_33 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_2 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_18 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_34 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_3 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_19 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_35 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_4 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_20 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_36 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_5 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_21 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_37 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_6 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_22 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_38 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_7 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_23 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_39 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_8 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_24 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_40 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_9 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_25 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_41 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_10 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_26 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_42 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_11 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_27 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_43 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_12 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_28 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_44 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_13 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_29 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_45 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_14 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_30 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_46 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_15 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_31 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
	{ regions_47 float 32 regular {array 512 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trainedRegions", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_32", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_17", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_33", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_18", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_34", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_19", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_35", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_20", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_36", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_21", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_37", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_22", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_38", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_23", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_39", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_24", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_40", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_25", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_41", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_26", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_42", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_27", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_43", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_28", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_44", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_29", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_45", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_30", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_46", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_31", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "regions_47", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 201
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ trainedRegions_address0 sc_out sc_lv 15 signal 0 } 
	{ trainedRegions_ce0 sc_out sc_logic 1 signal 0 } 
	{ trainedRegions_q0 sc_in sc_lv 32 signal 0 } 
	{ regions_address0 sc_out sc_lv 9 signal 1 } 
	{ regions_ce0 sc_out sc_logic 1 signal 1 } 
	{ regions_we0 sc_out sc_logic 1 signal 1 } 
	{ regions_d0 sc_out sc_lv 32 signal 1 } 
	{ regions_16_address0 sc_out sc_lv 9 signal 2 } 
	{ regions_16_ce0 sc_out sc_logic 1 signal 2 } 
	{ regions_16_we0 sc_out sc_logic 1 signal 2 } 
	{ regions_16_d0 sc_out sc_lv 32 signal 2 } 
	{ regions_32_address0 sc_out sc_lv 9 signal 3 } 
	{ regions_32_ce0 sc_out sc_logic 1 signal 3 } 
	{ regions_32_we0 sc_out sc_logic 1 signal 3 } 
	{ regions_32_d0 sc_out sc_lv 32 signal 3 } 
	{ regions_1_address0 sc_out sc_lv 9 signal 4 } 
	{ regions_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ regions_1_we0 sc_out sc_logic 1 signal 4 } 
	{ regions_1_d0 sc_out sc_lv 32 signal 4 } 
	{ regions_17_address0 sc_out sc_lv 9 signal 5 } 
	{ regions_17_ce0 sc_out sc_logic 1 signal 5 } 
	{ regions_17_we0 sc_out sc_logic 1 signal 5 } 
	{ regions_17_d0 sc_out sc_lv 32 signal 5 } 
	{ regions_33_address0 sc_out sc_lv 9 signal 6 } 
	{ regions_33_ce0 sc_out sc_logic 1 signal 6 } 
	{ regions_33_we0 sc_out sc_logic 1 signal 6 } 
	{ regions_33_d0 sc_out sc_lv 32 signal 6 } 
	{ regions_2_address0 sc_out sc_lv 9 signal 7 } 
	{ regions_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ regions_2_we0 sc_out sc_logic 1 signal 7 } 
	{ regions_2_d0 sc_out sc_lv 32 signal 7 } 
	{ regions_18_address0 sc_out sc_lv 9 signal 8 } 
	{ regions_18_ce0 sc_out sc_logic 1 signal 8 } 
	{ regions_18_we0 sc_out sc_logic 1 signal 8 } 
	{ regions_18_d0 sc_out sc_lv 32 signal 8 } 
	{ regions_34_address0 sc_out sc_lv 9 signal 9 } 
	{ regions_34_ce0 sc_out sc_logic 1 signal 9 } 
	{ regions_34_we0 sc_out sc_logic 1 signal 9 } 
	{ regions_34_d0 sc_out sc_lv 32 signal 9 } 
	{ regions_3_address0 sc_out sc_lv 9 signal 10 } 
	{ regions_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ regions_3_we0 sc_out sc_logic 1 signal 10 } 
	{ regions_3_d0 sc_out sc_lv 32 signal 10 } 
	{ regions_19_address0 sc_out sc_lv 9 signal 11 } 
	{ regions_19_ce0 sc_out sc_logic 1 signal 11 } 
	{ regions_19_we0 sc_out sc_logic 1 signal 11 } 
	{ regions_19_d0 sc_out sc_lv 32 signal 11 } 
	{ regions_35_address0 sc_out sc_lv 9 signal 12 } 
	{ regions_35_ce0 sc_out sc_logic 1 signal 12 } 
	{ regions_35_we0 sc_out sc_logic 1 signal 12 } 
	{ regions_35_d0 sc_out sc_lv 32 signal 12 } 
	{ regions_4_address0 sc_out sc_lv 9 signal 13 } 
	{ regions_4_ce0 sc_out sc_logic 1 signal 13 } 
	{ regions_4_we0 sc_out sc_logic 1 signal 13 } 
	{ regions_4_d0 sc_out sc_lv 32 signal 13 } 
	{ regions_20_address0 sc_out sc_lv 9 signal 14 } 
	{ regions_20_ce0 sc_out sc_logic 1 signal 14 } 
	{ regions_20_we0 sc_out sc_logic 1 signal 14 } 
	{ regions_20_d0 sc_out sc_lv 32 signal 14 } 
	{ regions_36_address0 sc_out sc_lv 9 signal 15 } 
	{ regions_36_ce0 sc_out sc_logic 1 signal 15 } 
	{ regions_36_we0 sc_out sc_logic 1 signal 15 } 
	{ regions_36_d0 sc_out sc_lv 32 signal 15 } 
	{ regions_5_address0 sc_out sc_lv 9 signal 16 } 
	{ regions_5_ce0 sc_out sc_logic 1 signal 16 } 
	{ regions_5_we0 sc_out sc_logic 1 signal 16 } 
	{ regions_5_d0 sc_out sc_lv 32 signal 16 } 
	{ regions_21_address0 sc_out sc_lv 9 signal 17 } 
	{ regions_21_ce0 sc_out sc_logic 1 signal 17 } 
	{ regions_21_we0 sc_out sc_logic 1 signal 17 } 
	{ regions_21_d0 sc_out sc_lv 32 signal 17 } 
	{ regions_37_address0 sc_out sc_lv 9 signal 18 } 
	{ regions_37_ce0 sc_out sc_logic 1 signal 18 } 
	{ regions_37_we0 sc_out sc_logic 1 signal 18 } 
	{ regions_37_d0 sc_out sc_lv 32 signal 18 } 
	{ regions_6_address0 sc_out sc_lv 9 signal 19 } 
	{ regions_6_ce0 sc_out sc_logic 1 signal 19 } 
	{ regions_6_we0 sc_out sc_logic 1 signal 19 } 
	{ regions_6_d0 sc_out sc_lv 32 signal 19 } 
	{ regions_22_address0 sc_out sc_lv 9 signal 20 } 
	{ regions_22_ce0 sc_out sc_logic 1 signal 20 } 
	{ regions_22_we0 sc_out sc_logic 1 signal 20 } 
	{ regions_22_d0 sc_out sc_lv 32 signal 20 } 
	{ regions_38_address0 sc_out sc_lv 9 signal 21 } 
	{ regions_38_ce0 sc_out sc_logic 1 signal 21 } 
	{ regions_38_we0 sc_out sc_logic 1 signal 21 } 
	{ regions_38_d0 sc_out sc_lv 32 signal 21 } 
	{ regions_7_address0 sc_out sc_lv 9 signal 22 } 
	{ regions_7_ce0 sc_out sc_logic 1 signal 22 } 
	{ regions_7_we0 sc_out sc_logic 1 signal 22 } 
	{ regions_7_d0 sc_out sc_lv 32 signal 22 } 
	{ regions_23_address0 sc_out sc_lv 9 signal 23 } 
	{ regions_23_ce0 sc_out sc_logic 1 signal 23 } 
	{ regions_23_we0 sc_out sc_logic 1 signal 23 } 
	{ regions_23_d0 sc_out sc_lv 32 signal 23 } 
	{ regions_39_address0 sc_out sc_lv 9 signal 24 } 
	{ regions_39_ce0 sc_out sc_logic 1 signal 24 } 
	{ regions_39_we0 sc_out sc_logic 1 signal 24 } 
	{ regions_39_d0 sc_out sc_lv 32 signal 24 } 
	{ regions_8_address0 sc_out sc_lv 9 signal 25 } 
	{ regions_8_ce0 sc_out sc_logic 1 signal 25 } 
	{ regions_8_we0 sc_out sc_logic 1 signal 25 } 
	{ regions_8_d0 sc_out sc_lv 32 signal 25 } 
	{ regions_24_address0 sc_out sc_lv 9 signal 26 } 
	{ regions_24_ce0 sc_out sc_logic 1 signal 26 } 
	{ regions_24_we0 sc_out sc_logic 1 signal 26 } 
	{ regions_24_d0 sc_out sc_lv 32 signal 26 } 
	{ regions_40_address0 sc_out sc_lv 9 signal 27 } 
	{ regions_40_ce0 sc_out sc_logic 1 signal 27 } 
	{ regions_40_we0 sc_out sc_logic 1 signal 27 } 
	{ regions_40_d0 sc_out sc_lv 32 signal 27 } 
	{ regions_9_address0 sc_out sc_lv 9 signal 28 } 
	{ regions_9_ce0 sc_out sc_logic 1 signal 28 } 
	{ regions_9_we0 sc_out sc_logic 1 signal 28 } 
	{ regions_9_d0 sc_out sc_lv 32 signal 28 } 
	{ regions_25_address0 sc_out sc_lv 9 signal 29 } 
	{ regions_25_ce0 sc_out sc_logic 1 signal 29 } 
	{ regions_25_we0 sc_out sc_logic 1 signal 29 } 
	{ regions_25_d0 sc_out sc_lv 32 signal 29 } 
	{ regions_41_address0 sc_out sc_lv 9 signal 30 } 
	{ regions_41_ce0 sc_out sc_logic 1 signal 30 } 
	{ regions_41_we0 sc_out sc_logic 1 signal 30 } 
	{ regions_41_d0 sc_out sc_lv 32 signal 30 } 
	{ regions_10_address0 sc_out sc_lv 9 signal 31 } 
	{ regions_10_ce0 sc_out sc_logic 1 signal 31 } 
	{ regions_10_we0 sc_out sc_logic 1 signal 31 } 
	{ regions_10_d0 sc_out sc_lv 32 signal 31 } 
	{ regions_26_address0 sc_out sc_lv 9 signal 32 } 
	{ regions_26_ce0 sc_out sc_logic 1 signal 32 } 
	{ regions_26_we0 sc_out sc_logic 1 signal 32 } 
	{ regions_26_d0 sc_out sc_lv 32 signal 32 } 
	{ regions_42_address0 sc_out sc_lv 9 signal 33 } 
	{ regions_42_ce0 sc_out sc_logic 1 signal 33 } 
	{ regions_42_we0 sc_out sc_logic 1 signal 33 } 
	{ regions_42_d0 sc_out sc_lv 32 signal 33 } 
	{ regions_11_address0 sc_out sc_lv 9 signal 34 } 
	{ regions_11_ce0 sc_out sc_logic 1 signal 34 } 
	{ regions_11_we0 sc_out sc_logic 1 signal 34 } 
	{ regions_11_d0 sc_out sc_lv 32 signal 34 } 
	{ regions_27_address0 sc_out sc_lv 9 signal 35 } 
	{ regions_27_ce0 sc_out sc_logic 1 signal 35 } 
	{ regions_27_we0 sc_out sc_logic 1 signal 35 } 
	{ regions_27_d0 sc_out sc_lv 32 signal 35 } 
	{ regions_43_address0 sc_out sc_lv 9 signal 36 } 
	{ regions_43_ce0 sc_out sc_logic 1 signal 36 } 
	{ regions_43_we0 sc_out sc_logic 1 signal 36 } 
	{ regions_43_d0 sc_out sc_lv 32 signal 36 } 
	{ regions_12_address0 sc_out sc_lv 9 signal 37 } 
	{ regions_12_ce0 sc_out sc_logic 1 signal 37 } 
	{ regions_12_we0 sc_out sc_logic 1 signal 37 } 
	{ regions_12_d0 sc_out sc_lv 32 signal 37 } 
	{ regions_28_address0 sc_out sc_lv 9 signal 38 } 
	{ regions_28_ce0 sc_out sc_logic 1 signal 38 } 
	{ regions_28_we0 sc_out sc_logic 1 signal 38 } 
	{ regions_28_d0 sc_out sc_lv 32 signal 38 } 
	{ regions_44_address0 sc_out sc_lv 9 signal 39 } 
	{ regions_44_ce0 sc_out sc_logic 1 signal 39 } 
	{ regions_44_we0 sc_out sc_logic 1 signal 39 } 
	{ regions_44_d0 sc_out sc_lv 32 signal 39 } 
	{ regions_13_address0 sc_out sc_lv 9 signal 40 } 
	{ regions_13_ce0 sc_out sc_logic 1 signal 40 } 
	{ regions_13_we0 sc_out sc_logic 1 signal 40 } 
	{ regions_13_d0 sc_out sc_lv 32 signal 40 } 
	{ regions_29_address0 sc_out sc_lv 9 signal 41 } 
	{ regions_29_ce0 sc_out sc_logic 1 signal 41 } 
	{ regions_29_we0 sc_out sc_logic 1 signal 41 } 
	{ regions_29_d0 sc_out sc_lv 32 signal 41 } 
	{ regions_45_address0 sc_out sc_lv 9 signal 42 } 
	{ regions_45_ce0 sc_out sc_logic 1 signal 42 } 
	{ regions_45_we0 sc_out sc_logic 1 signal 42 } 
	{ regions_45_d0 sc_out sc_lv 32 signal 42 } 
	{ regions_14_address0 sc_out sc_lv 9 signal 43 } 
	{ regions_14_ce0 sc_out sc_logic 1 signal 43 } 
	{ regions_14_we0 sc_out sc_logic 1 signal 43 } 
	{ regions_14_d0 sc_out sc_lv 32 signal 43 } 
	{ regions_30_address0 sc_out sc_lv 9 signal 44 } 
	{ regions_30_ce0 sc_out sc_logic 1 signal 44 } 
	{ regions_30_we0 sc_out sc_logic 1 signal 44 } 
	{ regions_30_d0 sc_out sc_lv 32 signal 44 } 
	{ regions_46_address0 sc_out sc_lv 9 signal 45 } 
	{ regions_46_ce0 sc_out sc_logic 1 signal 45 } 
	{ regions_46_we0 sc_out sc_logic 1 signal 45 } 
	{ regions_46_d0 sc_out sc_lv 32 signal 45 } 
	{ regions_15_address0 sc_out sc_lv 9 signal 46 } 
	{ regions_15_ce0 sc_out sc_logic 1 signal 46 } 
	{ regions_15_we0 sc_out sc_logic 1 signal 46 } 
	{ regions_15_d0 sc_out sc_lv 32 signal 46 } 
	{ regions_31_address0 sc_out sc_lv 9 signal 47 } 
	{ regions_31_ce0 sc_out sc_logic 1 signal 47 } 
	{ regions_31_we0 sc_out sc_logic 1 signal 47 } 
	{ regions_31_d0 sc_out sc_lv 32 signal 47 } 
	{ regions_47_address0 sc_out sc_lv 9 signal 48 } 
	{ regions_47_ce0 sc_out sc_logic 1 signal 48 } 
	{ regions_47_we0 sc_out sc_logic 1 signal 48 } 
	{ regions_47_d0 sc_out sc_lv 32 signal 48 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "trainedRegions_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "trainedRegions", "role": "address0" }} , 
 	{ "name": "trainedRegions_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "trainedRegions", "role": "ce0" }} , 
 	{ "name": "trainedRegions_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "trainedRegions", "role": "q0" }} , 
 	{ "name": "regions_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions", "role": "address0" }} , 
 	{ "name": "regions_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "ce0" }} , 
 	{ "name": "regions_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "we0" }} , 
 	{ "name": "regions_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions", "role": "d0" }} , 
 	{ "name": "regions_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_16", "role": "address0" }} , 
 	{ "name": "regions_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_16", "role": "ce0" }} , 
 	{ "name": "regions_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_16", "role": "we0" }} , 
 	{ "name": "regions_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_16", "role": "d0" }} , 
 	{ "name": "regions_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_32", "role": "address0" }} , 
 	{ "name": "regions_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_32", "role": "ce0" }} , 
 	{ "name": "regions_32_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_32", "role": "we0" }} , 
 	{ "name": "regions_32_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_32", "role": "d0" }} , 
 	{ "name": "regions_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_1", "role": "address0" }} , 
 	{ "name": "regions_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_1", "role": "ce0" }} , 
 	{ "name": "regions_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_1", "role": "we0" }} , 
 	{ "name": "regions_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_1", "role": "d0" }} , 
 	{ "name": "regions_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_17", "role": "address0" }} , 
 	{ "name": "regions_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_17", "role": "ce0" }} , 
 	{ "name": "regions_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_17", "role": "we0" }} , 
 	{ "name": "regions_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_17", "role": "d0" }} , 
 	{ "name": "regions_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_33", "role": "address0" }} , 
 	{ "name": "regions_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_33", "role": "ce0" }} , 
 	{ "name": "regions_33_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_33", "role": "we0" }} , 
 	{ "name": "regions_33_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_33", "role": "d0" }} , 
 	{ "name": "regions_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_2", "role": "address0" }} , 
 	{ "name": "regions_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "ce0" }} , 
 	{ "name": "regions_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "we0" }} , 
 	{ "name": "regions_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_2", "role": "d0" }} , 
 	{ "name": "regions_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_18", "role": "address0" }} , 
 	{ "name": "regions_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_18", "role": "ce0" }} , 
 	{ "name": "regions_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_18", "role": "we0" }} , 
 	{ "name": "regions_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_18", "role": "d0" }} , 
 	{ "name": "regions_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_34", "role": "address0" }} , 
 	{ "name": "regions_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_34", "role": "ce0" }} , 
 	{ "name": "regions_34_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_34", "role": "we0" }} , 
 	{ "name": "regions_34_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_34", "role": "d0" }} , 
 	{ "name": "regions_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_3", "role": "address0" }} , 
 	{ "name": "regions_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "ce0" }} , 
 	{ "name": "regions_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "we0" }} , 
 	{ "name": "regions_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "d0" }} , 
 	{ "name": "regions_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_19", "role": "address0" }} , 
 	{ "name": "regions_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_19", "role": "ce0" }} , 
 	{ "name": "regions_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_19", "role": "we0" }} , 
 	{ "name": "regions_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_19", "role": "d0" }} , 
 	{ "name": "regions_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_35", "role": "address0" }} , 
 	{ "name": "regions_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_35", "role": "ce0" }} , 
 	{ "name": "regions_35_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_35", "role": "we0" }} , 
 	{ "name": "regions_35_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_35", "role": "d0" }} , 
 	{ "name": "regions_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_4", "role": "address0" }} , 
 	{ "name": "regions_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_4", "role": "ce0" }} , 
 	{ "name": "regions_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_4", "role": "we0" }} , 
 	{ "name": "regions_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_4", "role": "d0" }} , 
 	{ "name": "regions_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_20", "role": "address0" }} , 
 	{ "name": "regions_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_20", "role": "ce0" }} , 
 	{ "name": "regions_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_20", "role": "we0" }} , 
 	{ "name": "regions_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_20", "role": "d0" }} , 
 	{ "name": "regions_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_36", "role": "address0" }} , 
 	{ "name": "regions_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_36", "role": "ce0" }} , 
 	{ "name": "regions_36_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_36", "role": "we0" }} , 
 	{ "name": "regions_36_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_36", "role": "d0" }} , 
 	{ "name": "regions_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_5", "role": "address0" }} , 
 	{ "name": "regions_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_5", "role": "ce0" }} , 
 	{ "name": "regions_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_5", "role": "we0" }} , 
 	{ "name": "regions_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_5", "role": "d0" }} , 
 	{ "name": "regions_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_21", "role": "address0" }} , 
 	{ "name": "regions_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_21", "role": "ce0" }} , 
 	{ "name": "regions_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_21", "role": "we0" }} , 
 	{ "name": "regions_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_21", "role": "d0" }} , 
 	{ "name": "regions_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_37", "role": "address0" }} , 
 	{ "name": "regions_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_37", "role": "ce0" }} , 
 	{ "name": "regions_37_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_37", "role": "we0" }} , 
 	{ "name": "regions_37_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_37", "role": "d0" }} , 
 	{ "name": "regions_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_6", "role": "address0" }} , 
 	{ "name": "regions_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_6", "role": "ce0" }} , 
 	{ "name": "regions_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_6", "role": "we0" }} , 
 	{ "name": "regions_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_6", "role": "d0" }} , 
 	{ "name": "regions_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_22", "role": "address0" }} , 
 	{ "name": "regions_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_22", "role": "ce0" }} , 
 	{ "name": "regions_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_22", "role": "we0" }} , 
 	{ "name": "regions_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_22", "role": "d0" }} , 
 	{ "name": "regions_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_38", "role": "address0" }} , 
 	{ "name": "regions_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_38", "role": "ce0" }} , 
 	{ "name": "regions_38_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_38", "role": "we0" }} , 
 	{ "name": "regions_38_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_38", "role": "d0" }} , 
 	{ "name": "regions_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_7", "role": "address0" }} , 
 	{ "name": "regions_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_7", "role": "ce0" }} , 
 	{ "name": "regions_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_7", "role": "we0" }} , 
 	{ "name": "regions_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_7", "role": "d0" }} , 
 	{ "name": "regions_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_23", "role": "address0" }} , 
 	{ "name": "regions_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_23", "role": "ce0" }} , 
 	{ "name": "regions_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_23", "role": "we0" }} , 
 	{ "name": "regions_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_23", "role": "d0" }} , 
 	{ "name": "regions_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_39", "role": "address0" }} , 
 	{ "name": "regions_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_39", "role": "ce0" }} , 
 	{ "name": "regions_39_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_39", "role": "we0" }} , 
 	{ "name": "regions_39_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_39", "role": "d0" }} , 
 	{ "name": "regions_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_8", "role": "address0" }} , 
 	{ "name": "regions_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_8", "role": "ce0" }} , 
 	{ "name": "regions_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_8", "role": "we0" }} , 
 	{ "name": "regions_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_8", "role": "d0" }} , 
 	{ "name": "regions_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_24", "role": "address0" }} , 
 	{ "name": "regions_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_24", "role": "ce0" }} , 
 	{ "name": "regions_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_24", "role": "we0" }} , 
 	{ "name": "regions_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_24", "role": "d0" }} , 
 	{ "name": "regions_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_40", "role": "address0" }} , 
 	{ "name": "regions_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_40", "role": "ce0" }} , 
 	{ "name": "regions_40_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_40", "role": "we0" }} , 
 	{ "name": "regions_40_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_40", "role": "d0" }} , 
 	{ "name": "regions_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_9", "role": "address0" }} , 
 	{ "name": "regions_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_9", "role": "ce0" }} , 
 	{ "name": "regions_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_9", "role": "we0" }} , 
 	{ "name": "regions_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_9", "role": "d0" }} , 
 	{ "name": "regions_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_25", "role": "address0" }} , 
 	{ "name": "regions_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_25", "role": "ce0" }} , 
 	{ "name": "regions_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_25", "role": "we0" }} , 
 	{ "name": "regions_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_25", "role": "d0" }} , 
 	{ "name": "regions_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_41", "role": "address0" }} , 
 	{ "name": "regions_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_41", "role": "ce0" }} , 
 	{ "name": "regions_41_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_41", "role": "we0" }} , 
 	{ "name": "regions_41_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_41", "role": "d0" }} , 
 	{ "name": "regions_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_10", "role": "address0" }} , 
 	{ "name": "regions_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_10", "role": "ce0" }} , 
 	{ "name": "regions_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_10", "role": "we0" }} , 
 	{ "name": "regions_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_10", "role": "d0" }} , 
 	{ "name": "regions_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_26", "role": "address0" }} , 
 	{ "name": "regions_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_26", "role": "ce0" }} , 
 	{ "name": "regions_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_26", "role": "we0" }} , 
 	{ "name": "regions_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_26", "role": "d0" }} , 
 	{ "name": "regions_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_42", "role": "address0" }} , 
 	{ "name": "regions_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_42", "role": "ce0" }} , 
 	{ "name": "regions_42_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_42", "role": "we0" }} , 
 	{ "name": "regions_42_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_42", "role": "d0" }} , 
 	{ "name": "regions_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_11", "role": "address0" }} , 
 	{ "name": "regions_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_11", "role": "ce0" }} , 
 	{ "name": "regions_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_11", "role": "we0" }} , 
 	{ "name": "regions_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_11", "role": "d0" }} , 
 	{ "name": "regions_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_27", "role": "address0" }} , 
 	{ "name": "regions_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_27", "role": "ce0" }} , 
 	{ "name": "regions_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_27", "role": "we0" }} , 
 	{ "name": "regions_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_27", "role": "d0" }} , 
 	{ "name": "regions_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_43", "role": "address0" }} , 
 	{ "name": "regions_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_43", "role": "ce0" }} , 
 	{ "name": "regions_43_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_43", "role": "we0" }} , 
 	{ "name": "regions_43_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_43", "role": "d0" }} , 
 	{ "name": "regions_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_12", "role": "address0" }} , 
 	{ "name": "regions_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_12", "role": "ce0" }} , 
 	{ "name": "regions_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_12", "role": "we0" }} , 
 	{ "name": "regions_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_12", "role": "d0" }} , 
 	{ "name": "regions_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_28", "role": "address0" }} , 
 	{ "name": "regions_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_28", "role": "ce0" }} , 
 	{ "name": "regions_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_28", "role": "we0" }} , 
 	{ "name": "regions_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_28", "role": "d0" }} , 
 	{ "name": "regions_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_44", "role": "address0" }} , 
 	{ "name": "regions_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_44", "role": "ce0" }} , 
 	{ "name": "regions_44_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_44", "role": "we0" }} , 
 	{ "name": "regions_44_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_44", "role": "d0" }} , 
 	{ "name": "regions_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_13", "role": "address0" }} , 
 	{ "name": "regions_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_13", "role": "ce0" }} , 
 	{ "name": "regions_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_13", "role": "we0" }} , 
 	{ "name": "regions_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_13", "role": "d0" }} , 
 	{ "name": "regions_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_29", "role": "address0" }} , 
 	{ "name": "regions_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_29", "role": "ce0" }} , 
 	{ "name": "regions_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_29", "role": "we0" }} , 
 	{ "name": "regions_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_29", "role": "d0" }} , 
 	{ "name": "regions_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_45", "role": "address0" }} , 
 	{ "name": "regions_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_45", "role": "ce0" }} , 
 	{ "name": "regions_45_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_45", "role": "we0" }} , 
 	{ "name": "regions_45_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_45", "role": "d0" }} , 
 	{ "name": "regions_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_14", "role": "address0" }} , 
 	{ "name": "regions_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_14", "role": "ce0" }} , 
 	{ "name": "regions_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_14", "role": "we0" }} , 
 	{ "name": "regions_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_14", "role": "d0" }} , 
 	{ "name": "regions_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_30", "role": "address0" }} , 
 	{ "name": "regions_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_30", "role": "ce0" }} , 
 	{ "name": "regions_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_30", "role": "we0" }} , 
 	{ "name": "regions_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_30", "role": "d0" }} , 
 	{ "name": "regions_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_46", "role": "address0" }} , 
 	{ "name": "regions_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_46", "role": "ce0" }} , 
 	{ "name": "regions_46_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_46", "role": "we0" }} , 
 	{ "name": "regions_46_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_46", "role": "d0" }} , 
 	{ "name": "regions_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_15", "role": "address0" }} , 
 	{ "name": "regions_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_15", "role": "ce0" }} , 
 	{ "name": "regions_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_15", "role": "we0" }} , 
 	{ "name": "regions_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_15", "role": "d0" }} , 
 	{ "name": "regions_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_31", "role": "address0" }} , 
 	{ "name": "regions_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_31", "role": "ce0" }} , 
 	{ "name": "regions_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_31", "role": "we0" }} , 
 	{ "name": "regions_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_31", "role": "d0" }} , 
 	{ "name": "regions_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "regions_47", "role": "address0" }} , 
 	{ "name": "regions_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_47", "role": "ce0" }} , 
 	{ "name": "regions_47_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_47", "role": "we0" }} , 
 	{ "name": "regions_47_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_47", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "run_Pipeline_VITIS_LOOP_686_1_VITIS_LOOP_688_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24580", "EstimateLatencyMax" : "24580",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trainedRegions", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_47", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_686_1_VITIS_LOOP_688_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "24", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_81_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_64ns_66ns_129_1_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run_Pipeline_VITIS_LOOP_686_1_VITIS_LOOP_688_2 {
		trainedRegions {Type I LastRead 25 FirstWrite -1}
		regions {Type O LastRead -1 FirstWrite 3}
		regions_16 {Type O LastRead -1 FirstWrite 11}
		regions_32 {Type O LastRead -1 FirstWrite 19}
		regions_1 {Type O LastRead -1 FirstWrite 3}
		regions_17 {Type O LastRead -1 FirstWrite 11}
		regions_33 {Type O LastRead -1 FirstWrite 19}
		regions_2 {Type O LastRead -1 FirstWrite 3}
		regions_18 {Type O LastRead -1 FirstWrite 11}
		regions_34 {Type O LastRead -1 FirstWrite 19}
		regions_3 {Type O LastRead -1 FirstWrite 3}
		regions_19 {Type O LastRead -1 FirstWrite 11}
		regions_35 {Type O LastRead -1 FirstWrite 19}
		regions_4 {Type O LastRead -1 FirstWrite 3}
		regions_20 {Type O LastRead -1 FirstWrite 11}
		regions_36 {Type O LastRead -1 FirstWrite 19}
		regions_5 {Type O LastRead -1 FirstWrite 3}
		regions_21 {Type O LastRead -1 FirstWrite 11}
		regions_37 {Type O LastRead -1 FirstWrite 19}
		regions_6 {Type O LastRead -1 FirstWrite 3}
		regions_22 {Type O LastRead -1 FirstWrite 11}
		regions_38 {Type O LastRead -1 FirstWrite 19}
		regions_7 {Type O LastRead -1 FirstWrite 3}
		regions_23 {Type O LastRead -1 FirstWrite 11}
		regions_39 {Type O LastRead -1 FirstWrite 19}
		regions_8 {Type O LastRead -1 FirstWrite 3}
		regions_24 {Type O LastRead -1 FirstWrite 11}
		regions_40 {Type O LastRead -1 FirstWrite 19}
		regions_9 {Type O LastRead -1 FirstWrite 3}
		regions_25 {Type O LastRead -1 FirstWrite 11}
		regions_41 {Type O LastRead -1 FirstWrite 19}
		regions_10 {Type O LastRead -1 FirstWrite 3}
		regions_26 {Type O LastRead -1 FirstWrite 11}
		regions_42 {Type O LastRead -1 FirstWrite 19}
		regions_11 {Type O LastRead -1 FirstWrite 3}
		regions_27 {Type O LastRead -1 FirstWrite 11}
		regions_43 {Type O LastRead -1 FirstWrite 19}
		regions_12 {Type O LastRead -1 FirstWrite 3}
		regions_28 {Type O LastRead -1 FirstWrite 11}
		regions_44 {Type O LastRead -1 FirstWrite 19}
		regions_13 {Type O LastRead -1 FirstWrite 3}
		regions_29 {Type O LastRead -1 FirstWrite 11}
		regions_45 {Type O LastRead -1 FirstWrite 19}
		regions_14 {Type O LastRead -1 FirstWrite 3}
		regions_30 {Type O LastRead -1 FirstWrite 11}
		regions_46 {Type O LastRead -1 FirstWrite 19}
		regions_15 {Type O LastRead -1 FirstWrite 3}
		regions_31 {Type O LastRead -1 FirstWrite 11}
		regions_47 {Type O LastRead -1 FirstWrite 19}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24580", "Max" : "24580"}
	, {"Name" : "Interval", "Min" : "24580", "Max" : "24580"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trainedRegions { ap_memory {  { trainedRegions_address0 mem_address 1 15 }  { trainedRegions_ce0 mem_ce 1 1 }  { trainedRegions_q0 in_data 0 32 } } }
	regions { ap_memory {  { regions_address0 mem_address 1 9 }  { regions_ce0 mem_ce 1 1 }  { regions_we0 mem_we 1 1 }  { regions_d0 mem_din 1 32 } } }
	regions_16 { ap_memory {  { regions_16_address0 mem_address 1 9 }  { regions_16_ce0 mem_ce 1 1 }  { regions_16_we0 mem_we 1 1 }  { regions_16_d0 mem_din 1 32 } } }
	regions_32 { ap_memory {  { regions_32_address0 mem_address 1 9 }  { regions_32_ce0 mem_ce 1 1 }  { regions_32_we0 mem_we 1 1 }  { regions_32_d0 mem_din 1 32 } } }
	regions_1 { ap_memory {  { regions_1_address0 mem_address 1 9 }  { regions_1_ce0 mem_ce 1 1 }  { regions_1_we0 mem_we 1 1 }  { regions_1_d0 mem_din 1 32 } } }
	regions_17 { ap_memory {  { regions_17_address0 mem_address 1 9 }  { regions_17_ce0 mem_ce 1 1 }  { regions_17_we0 mem_we 1 1 }  { regions_17_d0 mem_din 1 32 } } }
	regions_33 { ap_memory {  { regions_33_address0 mem_address 1 9 }  { regions_33_ce0 mem_ce 1 1 }  { regions_33_we0 mem_we 1 1 }  { regions_33_d0 mem_din 1 32 } } }
	regions_2 { ap_memory {  { regions_2_address0 mem_address 1 9 }  { regions_2_ce0 mem_ce 1 1 }  { regions_2_we0 mem_we 1 1 }  { regions_2_d0 mem_din 1 32 } } }
	regions_18 { ap_memory {  { regions_18_address0 mem_address 1 9 }  { regions_18_ce0 mem_ce 1 1 }  { regions_18_we0 mem_we 1 1 }  { regions_18_d0 mem_din 1 32 } } }
	regions_34 { ap_memory {  { regions_34_address0 mem_address 1 9 }  { regions_34_ce0 mem_ce 1 1 }  { regions_34_we0 mem_we 1 1 }  { regions_34_d0 mem_din 1 32 } } }
	regions_3 { ap_memory {  { regions_3_address0 mem_address 1 9 }  { regions_3_ce0 mem_ce 1 1 }  { regions_3_we0 mem_we 1 1 }  { regions_3_d0 mem_din 1 32 } } }
	regions_19 { ap_memory {  { regions_19_address0 mem_address 1 9 }  { regions_19_ce0 mem_ce 1 1 }  { regions_19_we0 mem_we 1 1 }  { regions_19_d0 mem_din 1 32 } } }
	regions_35 { ap_memory {  { regions_35_address0 mem_address 1 9 }  { regions_35_ce0 mem_ce 1 1 }  { regions_35_we0 mem_we 1 1 }  { regions_35_d0 mem_din 1 32 } } }
	regions_4 { ap_memory {  { regions_4_address0 mem_address 1 9 }  { regions_4_ce0 mem_ce 1 1 }  { regions_4_we0 mem_we 1 1 }  { regions_4_d0 mem_din 1 32 } } }
	regions_20 { ap_memory {  { regions_20_address0 mem_address 1 9 }  { regions_20_ce0 mem_ce 1 1 }  { regions_20_we0 mem_we 1 1 }  { regions_20_d0 mem_din 1 32 } } }
	regions_36 { ap_memory {  { regions_36_address0 mem_address 1 9 }  { regions_36_ce0 mem_ce 1 1 }  { regions_36_we0 mem_we 1 1 }  { regions_36_d0 mem_din 1 32 } } }
	regions_5 { ap_memory {  { regions_5_address0 mem_address 1 9 }  { regions_5_ce0 mem_ce 1 1 }  { regions_5_we0 mem_we 1 1 }  { regions_5_d0 mem_din 1 32 } } }
	regions_21 { ap_memory {  { regions_21_address0 mem_address 1 9 }  { regions_21_ce0 mem_ce 1 1 }  { regions_21_we0 mem_we 1 1 }  { regions_21_d0 mem_din 1 32 } } }
	regions_37 { ap_memory {  { regions_37_address0 mem_address 1 9 }  { regions_37_ce0 mem_ce 1 1 }  { regions_37_we0 mem_we 1 1 }  { regions_37_d0 mem_din 1 32 } } }
	regions_6 { ap_memory {  { regions_6_address0 mem_address 1 9 }  { regions_6_ce0 mem_ce 1 1 }  { regions_6_we0 mem_we 1 1 }  { regions_6_d0 mem_din 1 32 } } }
	regions_22 { ap_memory {  { regions_22_address0 mem_address 1 9 }  { regions_22_ce0 mem_ce 1 1 }  { regions_22_we0 mem_we 1 1 }  { regions_22_d0 mem_din 1 32 } } }
	regions_38 { ap_memory {  { regions_38_address0 mem_address 1 9 }  { regions_38_ce0 mem_ce 1 1 }  { regions_38_we0 mem_we 1 1 }  { regions_38_d0 mem_din 1 32 } } }
	regions_7 { ap_memory {  { regions_7_address0 mem_address 1 9 }  { regions_7_ce0 mem_ce 1 1 }  { regions_7_we0 mem_we 1 1 }  { regions_7_d0 mem_din 1 32 } } }
	regions_23 { ap_memory {  { regions_23_address0 mem_address 1 9 }  { regions_23_ce0 mem_ce 1 1 }  { regions_23_we0 mem_we 1 1 }  { regions_23_d0 mem_din 1 32 } } }
	regions_39 { ap_memory {  { regions_39_address0 mem_address 1 9 }  { regions_39_ce0 mem_ce 1 1 }  { regions_39_we0 mem_we 1 1 }  { regions_39_d0 mem_din 1 32 } } }
	regions_8 { ap_memory {  { regions_8_address0 mem_address 1 9 }  { regions_8_ce0 mem_ce 1 1 }  { regions_8_we0 mem_we 1 1 }  { regions_8_d0 mem_din 1 32 } } }
	regions_24 { ap_memory {  { regions_24_address0 mem_address 1 9 }  { regions_24_ce0 mem_ce 1 1 }  { regions_24_we0 mem_we 1 1 }  { regions_24_d0 mem_din 1 32 } } }
	regions_40 { ap_memory {  { regions_40_address0 mem_address 1 9 }  { regions_40_ce0 mem_ce 1 1 }  { regions_40_we0 mem_we 1 1 }  { regions_40_d0 mem_din 1 32 } } }
	regions_9 { ap_memory {  { regions_9_address0 mem_address 1 9 }  { regions_9_ce0 mem_ce 1 1 }  { regions_9_we0 mem_we 1 1 }  { regions_9_d0 mem_din 1 32 } } }
	regions_25 { ap_memory {  { regions_25_address0 mem_address 1 9 }  { regions_25_ce0 mem_ce 1 1 }  { regions_25_we0 mem_we 1 1 }  { regions_25_d0 mem_din 1 32 } } }
	regions_41 { ap_memory {  { regions_41_address0 mem_address 1 9 }  { regions_41_ce0 mem_ce 1 1 }  { regions_41_we0 mem_we 1 1 }  { regions_41_d0 mem_din 1 32 } } }
	regions_10 { ap_memory {  { regions_10_address0 mem_address 1 9 }  { regions_10_ce0 mem_ce 1 1 }  { regions_10_we0 mem_we 1 1 }  { regions_10_d0 mem_din 1 32 } } }
	regions_26 { ap_memory {  { regions_26_address0 mem_address 1 9 }  { regions_26_ce0 mem_ce 1 1 }  { regions_26_we0 mem_we 1 1 }  { regions_26_d0 mem_din 1 32 } } }
	regions_42 { ap_memory {  { regions_42_address0 mem_address 1 9 }  { regions_42_ce0 mem_ce 1 1 }  { regions_42_we0 mem_we 1 1 }  { regions_42_d0 mem_din 1 32 } } }
	regions_11 { ap_memory {  { regions_11_address0 mem_address 1 9 }  { regions_11_ce0 mem_ce 1 1 }  { regions_11_we0 mem_we 1 1 }  { regions_11_d0 mem_din 1 32 } } }
	regions_27 { ap_memory {  { regions_27_address0 mem_address 1 9 }  { regions_27_ce0 mem_ce 1 1 }  { regions_27_we0 mem_we 1 1 }  { regions_27_d0 mem_din 1 32 } } }
	regions_43 { ap_memory {  { regions_43_address0 mem_address 1 9 }  { regions_43_ce0 mem_ce 1 1 }  { regions_43_we0 mem_we 1 1 }  { regions_43_d0 mem_din 1 32 } } }
	regions_12 { ap_memory {  { regions_12_address0 mem_address 1 9 }  { regions_12_ce0 mem_ce 1 1 }  { regions_12_we0 mem_we 1 1 }  { regions_12_d0 mem_din 1 32 } } }
	regions_28 { ap_memory {  { regions_28_address0 mem_address 1 9 }  { regions_28_ce0 mem_ce 1 1 }  { regions_28_we0 mem_we 1 1 }  { regions_28_d0 mem_din 1 32 } } }
	regions_44 { ap_memory {  { regions_44_address0 mem_address 1 9 }  { regions_44_ce0 mem_ce 1 1 }  { regions_44_we0 mem_we 1 1 }  { regions_44_d0 mem_din 1 32 } } }
	regions_13 { ap_memory {  { regions_13_address0 mem_address 1 9 }  { regions_13_ce0 mem_ce 1 1 }  { regions_13_we0 mem_we 1 1 }  { regions_13_d0 mem_din 1 32 } } }
	regions_29 { ap_memory {  { regions_29_address0 mem_address 1 9 }  { regions_29_ce0 mem_ce 1 1 }  { regions_29_we0 mem_we 1 1 }  { regions_29_d0 mem_din 1 32 } } }
	regions_45 { ap_memory {  { regions_45_address0 mem_address 1 9 }  { regions_45_ce0 mem_ce 1 1 }  { regions_45_we0 mem_we 1 1 }  { regions_45_d0 mem_din 1 32 } } }
	regions_14 { ap_memory {  { regions_14_address0 mem_address 1 9 }  { regions_14_ce0 mem_ce 1 1 }  { regions_14_we0 mem_we 1 1 }  { regions_14_d0 mem_din 1 32 } } }
	regions_30 { ap_memory {  { regions_30_address0 mem_address 1 9 }  { regions_30_ce0 mem_ce 1 1 }  { regions_30_we0 mem_we 1 1 }  { regions_30_d0 mem_din 1 32 } } }
	regions_46 { ap_memory {  { regions_46_address0 mem_address 1 9 }  { regions_46_ce0 mem_ce 1 1 }  { regions_46_we0 mem_we 1 1 }  { regions_46_d0 mem_din 1 32 } } }
	regions_15 { ap_memory {  { regions_15_address0 mem_address 1 9 }  { regions_15_ce0 mem_ce 1 1 }  { regions_15_we0 mem_we 1 1 }  { regions_15_d0 mem_din 1 32 } } }
	regions_31 { ap_memory {  { regions_31_address0 mem_address 1 9 }  { regions_31_ce0 mem_ce 1 1 }  { regions_31_we0 mem_we 1 1 }  { regions_31_d0 mem_din 1 32 } } }
	regions_47 { ap_memory {  { regions_47_address0 mem_address 1 9 }  { regions_47_ce0 mem_ce 1 1 }  { regions_47_we0 mem_we 1 1 }  { regions_47_d0 mem_din 1 32 } } }
}
