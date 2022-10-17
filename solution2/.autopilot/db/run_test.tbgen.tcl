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
set C_modelType { int 1 }
set C_modelArgList {
	{ regions float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ p_read1 int 6 regular  }
	{ regions_2 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ regions_3 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ regions_4 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ p_read2 int 8 regular  }
	{ p_read3 float 32 regular  }
	{ p_read4 float 32 regular  }
	{ p_read5 float 32 regular  }
	{ p_read6 float 32 regular  }
	{ p_read7 float 32 regular  }
	{ p_read8 float 32 regular  }
	{ p_read9 float 32 regular  }
	{ p_read10 float 32 regular  }
	{ AOV_c float 32 regular {fifo 1}  }
	{ AOV_1_c float 32 regular {fifo 1}  }
	{ AOV_2_c float 32 regular {fifo 1}  }
	{ AOV_3_c float 32 regular {fifo 1}  }
	{ AOV_4_c float 32 regular {fifo 1}  }
	{ AOV_5_c float 32 regular {fifo 1}  }
	{ AOV_6_c float 32 regular {fifo 1}  }
	{ AOV_7_c float 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "regions", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "regions_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AOV_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AOV_1_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AOV_2_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AOV_3_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AOV_4_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AOV_5_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AOV_6_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AOV_7_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ regions_address0 sc_out sc_lv 12 signal 0 } 
	{ regions_ce0 sc_out sc_logic 1 signal 0 } 
	{ regions_q0 sc_in sc_lv 32 signal 0 } 
	{ p_read1 sc_in sc_lv 6 signal 1 } 
	{ regions_2_address0 sc_out sc_lv 12 signal 2 } 
	{ regions_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ regions_2_q0 sc_in sc_lv 32 signal 2 } 
	{ regions_3_address0 sc_out sc_lv 12 signal 3 } 
	{ regions_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ regions_3_q0 sc_in sc_lv 32 signal 3 } 
	{ regions_4_address0 sc_out sc_lv 12 signal 4 } 
	{ regions_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ regions_4_q0 sc_in sc_lv 32 signal 4 } 
	{ p_read2 sc_in sc_lv 8 signal 5 } 
	{ p_read3 sc_in sc_lv 32 signal 6 } 
	{ p_read4 sc_in sc_lv 32 signal 7 } 
	{ p_read5 sc_in sc_lv 32 signal 8 } 
	{ p_read6 sc_in sc_lv 32 signal 9 } 
	{ p_read7 sc_in sc_lv 32 signal 10 } 
	{ p_read8 sc_in sc_lv 32 signal 11 } 
	{ p_read9 sc_in sc_lv 32 signal 12 } 
	{ p_read10 sc_in sc_lv 32 signal 13 } 
	{ AOV_c_din sc_out sc_lv 32 signal 14 } 
	{ AOV_c_num_data_valid sc_in sc_lv 2 signal 14 } 
	{ AOV_c_fifo_cap sc_in sc_lv 2 signal 14 } 
	{ AOV_c_full_n sc_in sc_logic 1 signal 14 } 
	{ AOV_c_write sc_out sc_logic 1 signal 14 } 
	{ AOV_1_c_din sc_out sc_lv 32 signal 15 } 
	{ AOV_1_c_num_data_valid sc_in sc_lv 2 signal 15 } 
	{ AOV_1_c_fifo_cap sc_in sc_lv 2 signal 15 } 
	{ AOV_1_c_full_n sc_in sc_logic 1 signal 15 } 
	{ AOV_1_c_write sc_out sc_logic 1 signal 15 } 
	{ AOV_2_c_din sc_out sc_lv 32 signal 16 } 
	{ AOV_2_c_num_data_valid sc_in sc_lv 2 signal 16 } 
	{ AOV_2_c_fifo_cap sc_in sc_lv 2 signal 16 } 
	{ AOV_2_c_full_n sc_in sc_logic 1 signal 16 } 
	{ AOV_2_c_write sc_out sc_logic 1 signal 16 } 
	{ AOV_3_c_din sc_out sc_lv 32 signal 17 } 
	{ AOV_3_c_num_data_valid sc_in sc_lv 2 signal 17 } 
	{ AOV_3_c_fifo_cap sc_in sc_lv 2 signal 17 } 
	{ AOV_3_c_full_n sc_in sc_logic 1 signal 17 } 
	{ AOV_3_c_write sc_out sc_logic 1 signal 17 } 
	{ AOV_4_c_din sc_out sc_lv 32 signal 18 } 
	{ AOV_4_c_num_data_valid sc_in sc_lv 2 signal 18 } 
	{ AOV_4_c_fifo_cap sc_in sc_lv 2 signal 18 } 
	{ AOV_4_c_full_n sc_in sc_logic 1 signal 18 } 
	{ AOV_4_c_write sc_out sc_logic 1 signal 18 } 
	{ AOV_5_c_din sc_out sc_lv 32 signal 19 } 
	{ AOV_5_c_num_data_valid sc_in sc_lv 2 signal 19 } 
	{ AOV_5_c_fifo_cap sc_in sc_lv 2 signal 19 } 
	{ AOV_5_c_full_n sc_in sc_logic 1 signal 19 } 
	{ AOV_5_c_write sc_out sc_logic 1 signal 19 } 
	{ AOV_6_c_din sc_out sc_lv 32 signal 20 } 
	{ AOV_6_c_num_data_valid sc_in sc_lv 2 signal 20 } 
	{ AOV_6_c_fifo_cap sc_in sc_lv 2 signal 20 } 
	{ AOV_6_c_full_n sc_in sc_logic 1 signal 20 } 
	{ AOV_6_c_write sc_out sc_logic 1 signal 20 } 
	{ AOV_7_c_din sc_out sc_lv 32 signal 21 } 
	{ AOV_7_c_num_data_valid sc_in sc_lv 2 signal 21 } 
	{ AOV_7_c_fifo_cap sc_in sc_lv 2 signal 21 } 
	{ AOV_7_c_full_n sc_in sc_logic 1 signal 21 } 
	{ AOV_7_c_write sc_out sc_logic 1 signal 21 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "regions_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions", "role": "address0" }} , 
 	{ "name": "regions_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "ce0" }} , 
 	{ "name": "regions_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions", "role": "q0" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "regions_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_2", "role": "address0" }} , 
 	{ "name": "regions_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "ce0" }} , 
 	{ "name": "regions_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_2", "role": "q0" }} , 
 	{ "name": "regions_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_3", "role": "address0" }} , 
 	{ "name": "regions_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "ce0" }} , 
 	{ "name": "regions_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "q0" }} , 
 	{ "name": "regions_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_4", "role": "address0" }} , 
 	{ "name": "regions_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_4", "role": "ce0" }} , 
 	{ "name": "regions_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_4", "role": "q0" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "AOV_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_c", "role": "din" }} , 
 	{ "name": "AOV_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_c", "role": "num_data_valid" }} , 
 	{ "name": "AOV_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_c", "role": "fifo_cap" }} , 
 	{ "name": "AOV_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_c", "role": "full_n" }} , 
 	{ "name": "AOV_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_c", "role": "write" }} , 
 	{ "name": "AOV_1_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_1_c", "role": "din" }} , 
 	{ "name": "AOV_1_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_1_c", "role": "num_data_valid" }} , 
 	{ "name": "AOV_1_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_1_c", "role": "fifo_cap" }} , 
 	{ "name": "AOV_1_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_1_c", "role": "full_n" }} , 
 	{ "name": "AOV_1_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_1_c", "role": "write" }} , 
 	{ "name": "AOV_2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_2_c", "role": "din" }} , 
 	{ "name": "AOV_2_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_2_c", "role": "num_data_valid" }} , 
 	{ "name": "AOV_2_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_2_c", "role": "fifo_cap" }} , 
 	{ "name": "AOV_2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_2_c", "role": "full_n" }} , 
 	{ "name": "AOV_2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_2_c", "role": "write" }} , 
 	{ "name": "AOV_3_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_3_c", "role": "din" }} , 
 	{ "name": "AOV_3_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_3_c", "role": "num_data_valid" }} , 
 	{ "name": "AOV_3_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_3_c", "role": "fifo_cap" }} , 
 	{ "name": "AOV_3_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_3_c", "role": "full_n" }} , 
 	{ "name": "AOV_3_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_3_c", "role": "write" }} , 
 	{ "name": "AOV_4_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_4_c", "role": "din" }} , 
 	{ "name": "AOV_4_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_4_c", "role": "num_data_valid" }} , 
 	{ "name": "AOV_4_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_4_c", "role": "fifo_cap" }} , 
 	{ "name": "AOV_4_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_4_c", "role": "full_n" }} , 
 	{ "name": "AOV_4_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_4_c", "role": "write" }} , 
 	{ "name": "AOV_5_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_5_c", "role": "din" }} , 
 	{ "name": "AOV_5_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_5_c", "role": "num_data_valid" }} , 
 	{ "name": "AOV_5_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_5_c", "role": "fifo_cap" }} , 
 	{ "name": "AOV_5_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_5_c", "role": "full_n" }} , 
 	{ "name": "AOV_5_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_5_c", "role": "write" }} , 
 	{ "name": "AOV_6_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_6_c", "role": "din" }} , 
 	{ "name": "AOV_6_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_6_c", "role": "num_data_valid" }} , 
 	{ "name": "AOV_6_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_6_c", "role": "fifo_cap" }} , 
 	{ "name": "AOV_6_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_6_c", "role": "full_n" }} , 
 	{ "name": "AOV_6_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_6_c", "role": "write" }} , 
 	{ "name": "AOV_7_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AOV_7_c", "role": "din" }} , 
 	{ "name": "AOV_7_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_7_c", "role": "num_data_valid" }} , 
 	{ "name": "AOV_7_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AOV_7_c", "role": "fifo_cap" }} , 
 	{ "name": "AOV_7_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_7_c", "role": "full_n" }} , 
 	{ "name": "AOV_7_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AOV_7_c", "role": "write" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "11"],
		"CDFG" : "run_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "791",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_269", "Port" : "regions", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_269", "Port" : "regions_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_269", "Port" : "regions_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "regions_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_269", "Port" : "regions_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "AOV_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_4_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_4_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_5_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_5_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_6_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_6_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AOV_7_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "AOV_7_c_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_49_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_is_valid_label2_fu_249", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
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
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_is_valid_label2_fu_249.fcmp_32ns_32ns_1_2_no_dsp_1_U833", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_is_valid_label2_fu_249.fcmp_32ns_32ns_1_2_no_dsp_1_U834", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_is_valid_label2_fu_249.mux_84_32_1_1_U835", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_is_valid_label2_fu_249.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_269", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
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
			{"Name" : "tmp_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_269.mux_864_32_1_1_U845", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_269.mux_21_32_1_1_U846", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_269.mux_21_32_1_1_U847", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_run_test_Pipeline_VITIS_LOOP_55_2_fu_269.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U863", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run_test {
		regions {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		regions_2 {Type I LastRead 1 FirstWrite -1}
		regions_3 {Type I LastRead 3 FirstWrite -1}
		regions_4 {Type I LastRead 3 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		AOV_c {Type O LastRead -1 FirstWrite 0}
		AOV_1_c {Type O LastRead -1 FirstWrite 0}
		AOV_2_c {Type O LastRead -1 FirstWrite 0}
		AOV_3_c {Type O LastRead -1 FirstWrite 0}
		AOV_4_c {Type O LastRead -1 FirstWrite 0}
		AOV_5_c {Type O LastRead -1 FirstWrite 0}
		AOV_6_c {Type O LastRead -1 FirstWrite 0}
		AOV_7_c {Type O LastRead -1 FirstWrite 0}}
	run_test_Pipeline_is_valid_label2 {
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}}
	run_test_Pipeline_VITIS_LOOP_55_2 {
		tmp_11 {Type I LastRead 0 FirstWrite -1}
		regions {Type I LastRead 1 FirstWrite -1}
		regions_2 {Type I LastRead 1 FirstWrite -1}
		regions_3 {Type I LastRead 3 FirstWrite -1}
		regions_4 {Type I LastRead 3 FirstWrite -1}
		trunc_ln1 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "791"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "791"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	regions { ap_memory {  { regions_address0 mem_address 1 12 }  { regions_ce0 mem_ce 1 1 }  { regions_q0 mem_dout 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 6 } } }
	regions_2 { ap_memory {  { regions_2_address0 mem_address 1 12 }  { regions_2_ce0 mem_ce 1 1 }  { regions_2_q0 mem_dout 0 32 } } }
	regions_3 { ap_memory {  { regions_3_address0 mem_address 1 12 }  { regions_3_ce0 mem_ce 1 1 }  { regions_3_q0 mem_dout 0 32 } } }
	regions_4 { ap_memory {  { regions_4_address0 mem_address 1 12 }  { regions_4_ce0 mem_ce 1 1 }  { regions_4_q0 mem_dout 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 32 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 32 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 32 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 32 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 32 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 32 } } }
	AOV_c { ap_fifo {  { AOV_c_din fifo_port_we 1 32 }  { AOV_c_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_c_fifo_cap fifo_update 0 2 }  { AOV_c_full_n fifo_status 0 1 }  { AOV_c_write fifo_data 1 1 } } }
	AOV_1_c { ap_fifo {  { AOV_1_c_din fifo_port_we 1 32 }  { AOV_1_c_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_1_c_fifo_cap fifo_update 0 2 }  { AOV_1_c_full_n fifo_status 0 1 }  { AOV_1_c_write fifo_data 1 1 } } }
	AOV_2_c { ap_fifo {  { AOV_2_c_din fifo_port_we 1 32 }  { AOV_2_c_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_2_c_fifo_cap fifo_update 0 2 }  { AOV_2_c_full_n fifo_status 0 1 }  { AOV_2_c_write fifo_data 1 1 } } }
	AOV_3_c { ap_fifo {  { AOV_3_c_din fifo_port_we 1 32 }  { AOV_3_c_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_3_c_fifo_cap fifo_update 0 2 }  { AOV_3_c_full_n fifo_status 0 1 }  { AOV_3_c_write fifo_data 1 1 } } }
	AOV_4_c { ap_fifo {  { AOV_4_c_din fifo_port_we 1 32 }  { AOV_4_c_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_4_c_fifo_cap fifo_update 0 2 }  { AOV_4_c_full_n fifo_status 0 1 }  { AOV_4_c_write fifo_data 1 1 } } }
	AOV_5_c { ap_fifo {  { AOV_5_c_din fifo_port_we 1 32 }  { AOV_5_c_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_5_c_fifo_cap fifo_update 0 2 }  { AOV_5_c_full_n fifo_status 0 1 }  { AOV_5_c_write fifo_data 1 1 } } }
	AOV_6_c { ap_fifo {  { AOV_6_c_din fifo_port_we 1 32 }  { AOV_6_c_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_6_c_fifo_cap fifo_update 0 2 }  { AOV_6_c_full_n fifo_status 0 1 }  { AOV_6_c_write fifo_data 1 1 } } }
	AOV_7_c { ap_fifo {  { AOV_7_c_din fifo_port_we 1 32 }  { AOV_7_c_num_data_valid fifo_status_num_data_valid 0 2 }  { AOV_7_c_fifo_cap fifo_update 0 2 }  { AOV_7_c_full_n fifo_status 0 1 }  { AOV_7_c_write fifo_data 1 1 } } }
}
