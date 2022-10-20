set moduleName run_test
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {run_test}
set C_modelType { void 0 }
set C_modelArgList {
	{ copyDest int 320 regular {fifo 0 volatile }  }
	{ outcomeStream int 288 regular {fifo 1 volatile }  }
	{ p_ZL9n_regions_0 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_1 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_2 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_3 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_4 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_5 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_6 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_7 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_8 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_9 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_10 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_11 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_12 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_13 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_14 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_15 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_16 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_17 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_18 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_19 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_20 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_21 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_22 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_23 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_24 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_25 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_26 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_27 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_28 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_29 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_30 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_31 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_32 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_33 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_34 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_35 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_36 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_37 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_38 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_39 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_40 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_41 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_42 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_43 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_44 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_45 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_46 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_47 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_48 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_49 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_50 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_51 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_52 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_53 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_54 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_55 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_56 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_57 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_58 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_59 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_60 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_61 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_62 int 8 regular {pointer 0} {global 0}  }
	{ p_ZL9n_regions_63 int 8 regular {pointer 0} {global 0}  }
	{ regions float 32 regular {array 4096 { 1 3 } 1 1 } {global 0}  }
	{ regions_1 float 32 regular {array 4096 { 1 3 } 1 1 } {global 0}  }
	{ regions_2 float 32 regular {array 4096 { 1 3 } 1 1 } {global 0}  }
	{ regions_3 float 32 regular {array 4096 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "copyDest", "interface" : "fifo", "bitwidth" : 320, "direction" : "READONLY"} , 
 	{ "Name" : "outcomeStream", "interface" : "fifo", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_ZL9n_regions_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_15", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_16", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_17", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_18", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_19", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_20", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_21", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_22", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_23", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_24", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_25", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_26", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_27", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_28", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_29", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_30", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_31", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_32", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_33", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_34", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_35", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_36", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_37", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_38", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_39", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_40", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_41", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_42", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_43", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_44", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_45", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_46", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_47", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_48", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_49", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_50", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_51", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_52", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_53", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_54", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_55", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_56", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_57", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_58", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_59", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_60", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_61", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_62", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "p_ZL9n_regions_63", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "regions", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "regions_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "regions_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "regions_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 93
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ copyDest_dout sc_in sc_lv 320 signal 0 } 
	{ copyDest_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ copyDest_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ copyDest_empty_n sc_in sc_logic 1 signal 0 } 
	{ copyDest_read sc_out sc_logic 1 signal 0 } 
	{ outcomeStream_din sc_out sc_lv 288 signal 1 } 
	{ outcomeStream_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ outcomeStream_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ outcomeStream_full_n sc_in sc_logic 1 signal 1 } 
	{ outcomeStream_write sc_out sc_logic 1 signal 1 } 
	{ p_ZL9n_regions_0 sc_in sc_lv 8 signal 2 } 
	{ p_ZL9n_regions_1 sc_in sc_lv 8 signal 3 } 
	{ p_ZL9n_regions_2 sc_in sc_lv 8 signal 4 } 
	{ p_ZL9n_regions_3 sc_in sc_lv 8 signal 5 } 
	{ p_ZL9n_regions_4 sc_in sc_lv 8 signal 6 } 
	{ p_ZL9n_regions_5 sc_in sc_lv 8 signal 7 } 
	{ p_ZL9n_regions_6 sc_in sc_lv 8 signal 8 } 
	{ p_ZL9n_regions_7 sc_in sc_lv 8 signal 9 } 
	{ p_ZL9n_regions_8 sc_in sc_lv 8 signal 10 } 
	{ p_ZL9n_regions_9 sc_in sc_lv 8 signal 11 } 
	{ p_ZL9n_regions_10 sc_in sc_lv 8 signal 12 } 
	{ p_ZL9n_regions_11 sc_in sc_lv 8 signal 13 } 
	{ p_ZL9n_regions_12 sc_in sc_lv 8 signal 14 } 
	{ p_ZL9n_regions_13 sc_in sc_lv 8 signal 15 } 
	{ p_ZL9n_regions_14 sc_in sc_lv 8 signal 16 } 
	{ p_ZL9n_regions_15 sc_in sc_lv 8 signal 17 } 
	{ p_ZL9n_regions_16 sc_in sc_lv 8 signal 18 } 
	{ p_ZL9n_regions_17 sc_in sc_lv 8 signal 19 } 
	{ p_ZL9n_regions_18 sc_in sc_lv 8 signal 20 } 
	{ p_ZL9n_regions_19 sc_in sc_lv 8 signal 21 } 
	{ p_ZL9n_regions_20 sc_in sc_lv 8 signal 22 } 
	{ p_ZL9n_regions_21 sc_in sc_lv 8 signal 23 } 
	{ p_ZL9n_regions_22 sc_in sc_lv 8 signal 24 } 
	{ p_ZL9n_regions_23 sc_in sc_lv 8 signal 25 } 
	{ p_ZL9n_regions_24 sc_in sc_lv 8 signal 26 } 
	{ p_ZL9n_regions_25 sc_in sc_lv 8 signal 27 } 
	{ p_ZL9n_regions_26 sc_in sc_lv 8 signal 28 } 
	{ p_ZL9n_regions_27 sc_in sc_lv 8 signal 29 } 
	{ p_ZL9n_regions_28 sc_in sc_lv 8 signal 30 } 
	{ p_ZL9n_regions_29 sc_in sc_lv 8 signal 31 } 
	{ p_ZL9n_regions_30 sc_in sc_lv 8 signal 32 } 
	{ p_ZL9n_regions_31 sc_in sc_lv 8 signal 33 } 
	{ p_ZL9n_regions_32 sc_in sc_lv 8 signal 34 } 
	{ p_ZL9n_regions_33 sc_in sc_lv 8 signal 35 } 
	{ p_ZL9n_regions_34 sc_in sc_lv 8 signal 36 } 
	{ p_ZL9n_regions_35 sc_in sc_lv 8 signal 37 } 
	{ p_ZL9n_regions_36 sc_in sc_lv 8 signal 38 } 
	{ p_ZL9n_regions_37 sc_in sc_lv 8 signal 39 } 
	{ p_ZL9n_regions_38 sc_in sc_lv 8 signal 40 } 
	{ p_ZL9n_regions_39 sc_in sc_lv 8 signal 41 } 
	{ p_ZL9n_regions_40 sc_in sc_lv 8 signal 42 } 
	{ p_ZL9n_regions_41 sc_in sc_lv 8 signal 43 } 
	{ p_ZL9n_regions_42 sc_in sc_lv 8 signal 44 } 
	{ p_ZL9n_regions_43 sc_in sc_lv 8 signal 45 } 
	{ p_ZL9n_regions_44 sc_in sc_lv 8 signal 46 } 
	{ p_ZL9n_regions_45 sc_in sc_lv 8 signal 47 } 
	{ p_ZL9n_regions_46 sc_in sc_lv 8 signal 48 } 
	{ p_ZL9n_regions_47 sc_in sc_lv 8 signal 49 } 
	{ p_ZL9n_regions_48 sc_in sc_lv 8 signal 50 } 
	{ p_ZL9n_regions_49 sc_in sc_lv 8 signal 51 } 
	{ p_ZL9n_regions_50 sc_in sc_lv 8 signal 52 } 
	{ p_ZL9n_regions_51 sc_in sc_lv 8 signal 53 } 
	{ p_ZL9n_regions_52 sc_in sc_lv 8 signal 54 } 
	{ p_ZL9n_regions_53 sc_in sc_lv 8 signal 55 } 
	{ p_ZL9n_regions_54 sc_in sc_lv 8 signal 56 } 
	{ p_ZL9n_regions_55 sc_in sc_lv 8 signal 57 } 
	{ p_ZL9n_regions_56 sc_in sc_lv 8 signal 58 } 
	{ p_ZL9n_regions_57 sc_in sc_lv 8 signal 59 } 
	{ p_ZL9n_regions_58 sc_in sc_lv 8 signal 60 } 
	{ p_ZL9n_regions_59 sc_in sc_lv 8 signal 61 } 
	{ p_ZL9n_regions_60 sc_in sc_lv 8 signal 62 } 
	{ p_ZL9n_regions_61 sc_in sc_lv 8 signal 63 } 
	{ p_ZL9n_regions_62 sc_in sc_lv 8 signal 64 } 
	{ p_ZL9n_regions_63 sc_in sc_lv 8 signal 65 } 
	{ regions_address0 sc_out sc_lv 12 signal 66 } 
	{ regions_ce0 sc_out sc_logic 1 signal 66 } 
	{ regions_q0 sc_in sc_lv 32 signal 66 } 
	{ regions_1_address0 sc_out sc_lv 12 signal 67 } 
	{ regions_1_ce0 sc_out sc_logic 1 signal 67 } 
	{ regions_1_q0 sc_in sc_lv 32 signal 67 } 
	{ regions_2_address0 sc_out sc_lv 12 signal 68 } 
	{ regions_2_ce0 sc_out sc_logic 1 signal 68 } 
	{ regions_2_q0 sc_in sc_lv 32 signal 68 } 
	{ regions_3_address0 sc_out sc_lv 12 signal 69 } 
	{ regions_3_ce0 sc_out sc_logic 1 signal 69 } 
	{ regions_3_q0 sc_in sc_lv 32 signal 69 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "copyDest_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":320, "type": "signal", "bundle":{"name": "copyDest", "role": "dout" }} , 
 	{ "name": "copyDest_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "copyDest", "role": "num_data_valid" }} , 
 	{ "name": "copyDest_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "copyDest", "role": "fifo_cap" }} , 
 	{ "name": "copyDest_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "copyDest", "role": "empty_n" }} , 
 	{ "name": "copyDest_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "copyDest", "role": "read" }} , 
 	{ "name": "outcomeStream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "outcomeStream", "role": "din" }} , 
 	{ "name": "outcomeStream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outcomeStream", "role": "num_data_valid" }} , 
 	{ "name": "outcomeStream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outcomeStream", "role": "fifo_cap" }} , 
 	{ "name": "outcomeStream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outcomeStream", "role": "full_n" }} , 
 	{ "name": "outcomeStream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outcomeStream", "role": "write" }} , 
 	{ "name": "p_ZL9n_regions_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_0", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_1", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_2", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_3", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_4", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_5", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_6", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_7", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_8", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_9", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_10", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_11", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_12", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_13", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_14", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_15", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_16", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_16", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_17", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_17", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_18", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_18", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_19", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_19", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_20", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_20", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_21", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_21", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_22", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_22", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_23", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_23", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_24", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_24", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_25", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_25", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_26", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_26", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_27", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_27", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_28", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_28", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_29", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_29", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_30", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_30", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_31", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_31", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_32", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_32", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_33", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_33", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_34", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_34", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_35", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_35", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_36", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_36", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_37", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_37", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_38", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_38", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_39", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_39", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_40", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_40", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_41", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_41", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_42", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_42", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_43", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_43", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_44", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_44", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_45", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_45", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_46", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_46", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_47", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_47", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_48", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_48", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_49", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_49", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_50", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_50", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_51", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_51", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_52", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_52", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_53", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_53", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_54", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_54", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_55", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_55", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_56", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_56", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_57", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_57", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_58", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_58", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_59", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_59", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_60", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_60", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_61", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_61", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_62", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_62", "role": "default" }} , 
 	{ "name": "p_ZL9n_regions_63", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_ZL9n_regions_63", "role": "default" }} , 
 	{ "name": "regions_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions", "role": "address0" }} , 
 	{ "name": "regions_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "ce0" }} , 
 	{ "name": "regions_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions", "role": "q0" }} , 
 	{ "name": "regions_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_1", "role": "address0" }} , 
 	{ "name": "regions_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_1", "role": "ce0" }} , 
 	{ "name": "regions_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_1", "role": "q0" }} , 
 	{ "name": "regions_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_2", "role": "address0" }} , 
 	{ "name": "regions_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "ce0" }} , 
 	{ "name": "regions_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_2", "role": "q0" }} , 
 	{ "name": "regions_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_3", "role": "address0" }} , 
 	{ "name": "regions_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "ce0" }} , 
 	{ "name": "regions_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "10", "15", "16"],
		"CDFG" : "run_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "copyDest", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "copyDest_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outcomeStream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "outcomeStream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_ZL9n_regions_0", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_2", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_3", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_4", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_5", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_6", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_7", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_8", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_9", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_10", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_11", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_12", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_13", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_14", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_15", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_16", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_17", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_18", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_19", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_20", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_21", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_22", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_23", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_24", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_25", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_26", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_27", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_28", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_29", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_30", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_31", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_32", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_33", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_34", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_35", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_36", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_37", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_38", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_39", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_40", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_41", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_42", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_43", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_44", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_45", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_46", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_47", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_48", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_49", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_50", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_51", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_52", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_53", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_54", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_55", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_56", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_57", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_58", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_59", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_60", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_61", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_62", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "p_ZL9n_regions_63", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "regions", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378", "Port" : "regions", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "regions_1", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378", "Port" : "regions_1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "regions_2", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378", "Port" : "regions_2", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "regions_3", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378", "Port" : "regions_3", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_49_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state10"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_460_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outcome_AOV_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_1_fu_353", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "run_test_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_AOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcome_AOV", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_1_fu_353.mux_84_32_1_1_U6", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_1_fu_353.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_is_valid_label2_fu_366", "Parent" : "0", "Child" : ["6", "7", "8", "9"],
		"CDFG" : "run_test_Pipeline_is_valid_label2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_AOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_7", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "NotSupport"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_is_valid_label2_fu_366.fcmp_32ns_32ns_1_2_no_dsp_1_U18", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_is_valid_label2_fu_366.fcmp_32ns_32ns_1_2_no_dsp_1_U19", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_is_valid_label2_fu_366.mux_84_32_1_1_U20", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_is_valid_label2_fu_366.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378", "Parent" : "0", "Child" : ["11", "12", "13", "14"],
		"CDFG" : "run_test_Pipeline_VITIS_LOOP_55_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "46",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_AOV_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "regions_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "regions_2", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "regions_3", "Type" : "Stable", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378.mux_864_32_1_1_U31", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378.mux_21_32_1_1_U32", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378.mux_21_32_1_1_U33", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_378.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_648_8_1_1_U50", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U51", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run_test {
		copyDest {Type I LastRead 1 FirstWrite -1}
		outcomeStream {Type O LastRead -1 FirstWrite 7}
		p_ZL9n_regions_0 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_1 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_2 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_3 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_4 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_5 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_6 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_7 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_8 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_9 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_10 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_11 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_12 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_13 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_14 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_15 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_16 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_17 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_18 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_19 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_20 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_21 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_22 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_23 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_24 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_25 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_26 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_27 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_28 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_29 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_30 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_31 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_32 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_33 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_34 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_35 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_36 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_37 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_38 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_39 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_40 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_41 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_42 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_43 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_44 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_45 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_46 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_47 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_48 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_49 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_50 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_51 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_52 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_53 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_54 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_55 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_56 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_57 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_58 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_59 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_60 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_61 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_62 {Type I LastRead 0 FirstWrite -1}
		p_ZL9n_regions_63 {Type I LastRead 0 FirstWrite -1}
		regions {Type I LastRead 1 FirstWrite -1}
		regions_1 {Type I LastRead 1 FirstWrite -1}
		regions_2 {Type I LastRead 3 FirstWrite -1}
		regions_3 {Type I LastRead 3 FirstWrite -1}}
	run_test_Pipeline_1 {
		in_AOV {Type I LastRead 0 FirstWrite -1}
		in_AOV_1 {Type I LastRead 0 FirstWrite -1}
		in_AOV_2 {Type I LastRead 0 FirstWrite -1}
		in_AOV_3 {Type I LastRead 0 FirstWrite -1}
		in_AOV_4 {Type I LastRead 0 FirstWrite -1}
		in_AOV_5 {Type I LastRead 0 FirstWrite -1}
		in_AOV_6 {Type I LastRead 0 FirstWrite -1}
		in_AOV_7 {Type I LastRead 0 FirstWrite -1}
		outcome_AOV {Type O LastRead -1 FirstWrite 0}}
	run_test_Pipeline_is_valid_label2 {
		in_AOV {Type I LastRead 0 FirstWrite -1}
		in_AOV_1 {Type I LastRead 0 FirstWrite -1}
		in_AOV_2 {Type I LastRead 0 FirstWrite -1}
		in_AOV_3 {Type I LastRead 0 FirstWrite -1}
		in_AOV_4 {Type I LastRead 0 FirstWrite -1}
		in_AOV_5 {Type I LastRead 0 FirstWrite -1}
		in_AOV_6 {Type I LastRead 0 FirstWrite -1}
		in_AOV_7 {Type I LastRead 0 FirstWrite -1}}
	run_test_Pipeline_VITIS_LOOP_55_2 {
		tmp_16 {Type I LastRead 0 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		in_AOV {Type I LastRead 0 FirstWrite -1}
		in_AOV_1 {Type I LastRead 0 FirstWrite -1}
		in_AOV_2 {Type I LastRead 0 FirstWrite -1}
		in_AOV_3 {Type I LastRead 0 FirstWrite -1}
		in_AOV_4 {Type I LastRead 0 FirstWrite -1}
		in_AOV_5 {Type I LastRead 0 FirstWrite -1}
		in_AOV_6 {Type I LastRead 0 FirstWrite -1}
		in_AOV_7 {Type I LastRead 0 FirstWrite -1}
		regions {Type I LastRead 1 FirstWrite -1}
		regions_1 {Type I LastRead 1 FirstWrite -1}
		regions_2 {Type I LastRead 3 FirstWrite -1}
		regions_3 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	copyDest { ap_fifo {  { copyDest_dout fifo_port_we 0 320 }  { copyDest_num_data_valid fifo_status_num_data_valid 0 2 }  { copyDest_fifo_cap fifo_update 0 2 }  { copyDest_empty_n fifo_status 0 1 }  { copyDest_read fifo_data 1 1 } } }
	outcomeStream { ap_fifo {  { outcomeStream_din fifo_port_we 1 288 }  { outcomeStream_num_data_valid fifo_status_num_data_valid 0 2 }  { outcomeStream_fifo_cap fifo_update 0 2 }  { outcomeStream_full_n fifo_status 0 1 }  { outcomeStream_write fifo_data 1 1 } } }
	p_ZL9n_regions_0 { ap_stable {  { p_ZL9n_regions_0 in_data 0 8 } } }
	p_ZL9n_regions_1 { ap_stable {  { p_ZL9n_regions_1 in_data 0 8 } } }
	p_ZL9n_regions_2 { ap_stable {  { p_ZL9n_regions_2 in_data 0 8 } } }
	p_ZL9n_regions_3 { ap_stable {  { p_ZL9n_regions_3 in_data 0 8 } } }
	p_ZL9n_regions_4 { ap_stable {  { p_ZL9n_regions_4 in_data 0 8 } } }
	p_ZL9n_regions_5 { ap_stable {  { p_ZL9n_regions_5 in_data 0 8 } } }
	p_ZL9n_regions_6 { ap_stable {  { p_ZL9n_regions_6 in_data 0 8 } } }
	p_ZL9n_regions_7 { ap_stable {  { p_ZL9n_regions_7 in_data 0 8 } } }
	p_ZL9n_regions_8 { ap_stable {  { p_ZL9n_regions_8 in_data 0 8 } } }
	p_ZL9n_regions_9 { ap_stable {  { p_ZL9n_regions_9 in_data 0 8 } } }
	p_ZL9n_regions_10 { ap_stable {  { p_ZL9n_regions_10 in_data 0 8 } } }
	p_ZL9n_regions_11 { ap_stable {  { p_ZL9n_regions_11 in_data 0 8 } } }
	p_ZL9n_regions_12 { ap_stable {  { p_ZL9n_regions_12 in_data 0 8 } } }
	p_ZL9n_regions_13 { ap_stable {  { p_ZL9n_regions_13 in_data 0 8 } } }
	p_ZL9n_regions_14 { ap_stable {  { p_ZL9n_regions_14 in_data 0 8 } } }
	p_ZL9n_regions_15 { ap_stable {  { p_ZL9n_regions_15 in_data 0 8 } } }
	p_ZL9n_regions_16 { ap_stable {  { p_ZL9n_regions_16 in_data 0 8 } } }
	p_ZL9n_regions_17 { ap_stable {  { p_ZL9n_regions_17 in_data 0 8 } } }
	p_ZL9n_regions_18 { ap_stable {  { p_ZL9n_regions_18 in_data 0 8 } } }
	p_ZL9n_regions_19 { ap_stable {  { p_ZL9n_regions_19 in_data 0 8 } } }
	p_ZL9n_regions_20 { ap_stable {  { p_ZL9n_regions_20 in_data 0 8 } } }
	p_ZL9n_regions_21 { ap_stable {  { p_ZL9n_regions_21 in_data 0 8 } } }
	p_ZL9n_regions_22 { ap_stable {  { p_ZL9n_regions_22 in_data 0 8 } } }
	p_ZL9n_regions_23 { ap_stable {  { p_ZL9n_regions_23 in_data 0 8 } } }
	p_ZL9n_regions_24 { ap_stable {  { p_ZL9n_regions_24 in_data 0 8 } } }
	p_ZL9n_regions_25 { ap_stable {  { p_ZL9n_regions_25 in_data 0 8 } } }
	p_ZL9n_regions_26 { ap_stable {  { p_ZL9n_regions_26 in_data 0 8 } } }
	p_ZL9n_regions_27 { ap_stable {  { p_ZL9n_regions_27 in_data 0 8 } } }
	p_ZL9n_regions_28 { ap_stable {  { p_ZL9n_regions_28 in_data 0 8 } } }
	p_ZL9n_regions_29 { ap_stable {  { p_ZL9n_regions_29 in_data 0 8 } } }
	p_ZL9n_regions_30 { ap_stable {  { p_ZL9n_regions_30 in_data 0 8 } } }
	p_ZL9n_regions_31 { ap_stable {  { p_ZL9n_regions_31 in_data 0 8 } } }
	p_ZL9n_regions_32 { ap_stable {  { p_ZL9n_regions_32 in_data 0 8 } } }
	p_ZL9n_regions_33 { ap_stable {  { p_ZL9n_regions_33 in_data 0 8 } } }
	p_ZL9n_regions_34 { ap_stable {  { p_ZL9n_regions_34 in_data 0 8 } } }
	p_ZL9n_regions_35 { ap_stable {  { p_ZL9n_regions_35 in_data 0 8 } } }
	p_ZL9n_regions_36 { ap_stable {  { p_ZL9n_regions_36 in_data 0 8 } } }
	p_ZL9n_regions_37 { ap_stable {  { p_ZL9n_regions_37 in_data 0 8 } } }
	p_ZL9n_regions_38 { ap_stable {  { p_ZL9n_regions_38 in_data 0 8 } } }
	p_ZL9n_regions_39 { ap_stable {  { p_ZL9n_regions_39 in_data 0 8 } } }
	p_ZL9n_regions_40 { ap_stable {  { p_ZL9n_regions_40 in_data 0 8 } } }
	p_ZL9n_regions_41 { ap_stable {  { p_ZL9n_regions_41 in_data 0 8 } } }
	p_ZL9n_regions_42 { ap_stable {  { p_ZL9n_regions_42 in_data 0 8 } } }
	p_ZL9n_regions_43 { ap_stable {  { p_ZL9n_regions_43 in_data 0 8 } } }
	p_ZL9n_regions_44 { ap_stable {  { p_ZL9n_regions_44 in_data 0 8 } } }
	p_ZL9n_regions_45 { ap_stable {  { p_ZL9n_regions_45 in_data 0 8 } } }
	p_ZL9n_regions_46 { ap_stable {  { p_ZL9n_regions_46 in_data 0 8 } } }
	p_ZL9n_regions_47 { ap_stable {  { p_ZL9n_regions_47 in_data 0 8 } } }
	p_ZL9n_regions_48 { ap_stable {  { p_ZL9n_regions_48 in_data 0 8 } } }
	p_ZL9n_regions_49 { ap_stable {  { p_ZL9n_regions_49 in_data 0 8 } } }
	p_ZL9n_regions_50 { ap_stable {  { p_ZL9n_regions_50 in_data 0 8 } } }
	p_ZL9n_regions_51 { ap_stable {  { p_ZL9n_regions_51 in_data 0 8 } } }
	p_ZL9n_regions_52 { ap_stable {  { p_ZL9n_regions_52 in_data 0 8 } } }
	p_ZL9n_regions_53 { ap_stable {  { p_ZL9n_regions_53 in_data 0 8 } } }
	p_ZL9n_regions_54 { ap_stable {  { p_ZL9n_regions_54 in_data 0 8 } } }
	p_ZL9n_regions_55 { ap_stable {  { p_ZL9n_regions_55 in_data 0 8 } } }
	p_ZL9n_regions_56 { ap_stable {  { p_ZL9n_regions_56 in_data 0 8 } } }
	p_ZL9n_regions_57 { ap_stable {  { p_ZL9n_regions_57 in_data 0 8 } } }
	p_ZL9n_regions_58 { ap_stable {  { p_ZL9n_regions_58 in_data 0 8 } } }
	p_ZL9n_regions_59 { ap_stable {  { p_ZL9n_regions_59 in_data 0 8 } } }
	p_ZL9n_regions_60 { ap_stable {  { p_ZL9n_regions_60 in_data 0 8 } } }
	p_ZL9n_regions_61 { ap_stable {  { p_ZL9n_regions_61 in_data 0 8 } } }
	p_ZL9n_regions_62 { ap_stable {  { p_ZL9n_regions_62 in_data 0 8 } } }
	p_ZL9n_regions_63 { ap_stable {  { p_ZL9n_regions_63 in_data 0 8 } } }
	regions { ap_stable {  { regions_address0 mem_address 1 12 }  { regions_ce0 mem_ce 1 1 }  { regions_q0 mem_dout 0 32 } } }
	regions_1 { ap_stable {  { regions_1_address0 mem_address 1 12 }  { regions_1_ce0 mem_ce 1 1 }  { regions_1_q0 mem_dout 0 32 } } }
	regions_2 { ap_stable {  { regions_2_address0 mem_address 1 12 }  { regions_2_ce0 mem_ce 1 1 }  { regions_2_q0 mem_dout 0 32 } } }
	regions_3 { ap_stable {  { regions_3_address0 mem_address 1 12 }  { regions_3_ce0 mem_ce 1 1 }  { regions_3_q0 mem_dout 0 32 } } }
}
