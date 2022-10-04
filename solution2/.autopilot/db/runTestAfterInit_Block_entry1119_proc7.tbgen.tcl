set moduleName runTestAfterInit_Block_entry1119_proc7
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
set C_modelName {runTestAfterInit_Block_entry1119_proc7}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 8 regular  }
	{ p_read1 int 8 regular  }
	{ errorInTask int 1 regular {array 16 { 2 } 1 1 }  }
	{ p_read2 int 8 regular  }
	{ p_read3 float 32 regular  }
	{ p_read4 float 32 regular  }
	{ p_read5 float 32 regular  }
	{ p_read6 float 32 regular  }
	{ p_read7 float 32 regular  }
	{ p_read8 float 32 regular  }
	{ p_read9 float 32 regular  }
	{ p_read10 float 32 regular  }
	{ copyInputAOV_in int 8 regular {fifo 0}  }
	{ copyInputAOV_out int 8 regular {pointer 1}  }
	{ p_read311 int 16 regular  }
	{ toScheduler int 8 regular {axi_s 1 volatile  { toScheduler Data } }  }
	{ outcomeInRam int 288 regular {array 16 { 0 } 1 1 }  }
	{ regions float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ regions_1 float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ regions_2 float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ regions_3 float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ regions_4 float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ regions_5 float 32 regular {array 4096 { 2 2 } 1 1 } {global 2}  }
	{ n_regions_V int 8 regular {array 64 { 2 3 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "errorInTask", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "copyInputAOV_in", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "copyInputAOV_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read311", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "toScheduler", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outcomeInRam", "interface" : "memory", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regions", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "regions_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "regions_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "regions_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "regions_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "regions_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "n_regions_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 103
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 8 signal 0 } 
	{ p_read1 sc_in sc_lv 8 signal 1 } 
	{ errorInTask_address0 sc_out sc_lv 4 signal 2 } 
	{ errorInTask_ce0 sc_out sc_logic 1 signal 2 } 
	{ errorInTask_we0 sc_out sc_logic 1 signal 2 } 
	{ errorInTask_d0 sc_out sc_lv 1 signal 2 } 
	{ errorInTask_q0 sc_in sc_lv 1 signal 2 } 
	{ p_read2 sc_in sc_lv 8 signal 3 } 
	{ p_read3 sc_in sc_lv 32 signal 4 } 
	{ p_read4 sc_in sc_lv 32 signal 5 } 
	{ p_read5 sc_in sc_lv 32 signal 6 } 
	{ p_read6 sc_in sc_lv 32 signal 7 } 
	{ p_read7 sc_in sc_lv 32 signal 8 } 
	{ p_read8 sc_in sc_lv 32 signal 9 } 
	{ p_read9 sc_in sc_lv 32 signal 10 } 
	{ p_read10 sc_in sc_lv 32 signal 11 } 
	{ copyInputAOV_in_dout sc_in sc_lv 8 signal 12 } 
	{ copyInputAOV_in_num_data_valid sc_in sc_lv 2 signal 12 } 
	{ copyInputAOV_in_fifo_cap sc_in sc_lv 2 signal 12 } 
	{ copyInputAOV_in_empty_n sc_in sc_logic 1 signal 12 } 
	{ copyInputAOV_in_read sc_out sc_logic 1 signal 12 } 
	{ copyInputAOV_out sc_out sc_lv 8 signal 13 } 
	{ copyInputAOV_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ p_read311 sc_in sc_lv 16 signal 14 } 
	{ toScheduler_TDATA sc_out sc_lv 8 signal 15 } 
	{ toScheduler_TVALID sc_out sc_logic 1 outvld 15 } 
	{ toScheduler_TREADY sc_in sc_logic 1 outacc 15 } 
	{ outcomeInRam_address0 sc_out sc_lv 4 signal 16 } 
	{ outcomeInRam_ce0 sc_out sc_logic 1 signal 16 } 
	{ outcomeInRam_we0 sc_out sc_lv 36 signal 16 } 
	{ outcomeInRam_d0 sc_out sc_lv 288 signal 16 } 
	{ regions_address0 sc_out sc_lv 12 signal 17 } 
	{ regions_ce0 sc_out sc_logic 1 signal 17 } 
	{ regions_we0 sc_out sc_logic 1 signal 17 } 
	{ regions_d0 sc_out sc_lv 32 signal 17 } 
	{ regions_q0 sc_in sc_lv 32 signal 17 } 
	{ regions_address1 sc_out sc_lv 12 signal 17 } 
	{ regions_ce1 sc_out sc_logic 1 signal 17 } 
	{ regions_we1 sc_out sc_logic 1 signal 17 } 
	{ regions_d1 sc_out sc_lv 32 signal 17 } 
	{ regions_q1 sc_in sc_lv 32 signal 17 } 
	{ regions_1_address0 sc_out sc_lv 12 signal 18 } 
	{ regions_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ regions_1_we0 sc_out sc_logic 1 signal 18 } 
	{ regions_1_d0 sc_out sc_lv 32 signal 18 } 
	{ regions_1_q0 sc_in sc_lv 32 signal 18 } 
	{ regions_1_address1 sc_out sc_lv 12 signal 18 } 
	{ regions_1_ce1 sc_out sc_logic 1 signal 18 } 
	{ regions_1_we1 sc_out sc_logic 1 signal 18 } 
	{ regions_1_d1 sc_out sc_lv 32 signal 18 } 
	{ regions_1_q1 sc_in sc_lv 32 signal 18 } 
	{ regions_2_address0 sc_out sc_lv 12 signal 19 } 
	{ regions_2_ce0 sc_out sc_logic 1 signal 19 } 
	{ regions_2_we0 sc_out sc_logic 1 signal 19 } 
	{ regions_2_d0 sc_out sc_lv 32 signal 19 } 
	{ regions_2_q0 sc_in sc_lv 32 signal 19 } 
	{ regions_2_address1 sc_out sc_lv 12 signal 19 } 
	{ regions_2_ce1 sc_out sc_logic 1 signal 19 } 
	{ regions_2_we1 sc_out sc_logic 1 signal 19 } 
	{ regions_2_d1 sc_out sc_lv 32 signal 19 } 
	{ regions_2_q1 sc_in sc_lv 32 signal 19 } 
	{ regions_3_address0 sc_out sc_lv 12 signal 20 } 
	{ regions_3_ce0 sc_out sc_logic 1 signal 20 } 
	{ regions_3_we0 sc_out sc_logic 1 signal 20 } 
	{ regions_3_d0 sc_out sc_lv 32 signal 20 } 
	{ regions_3_q0 sc_in sc_lv 32 signal 20 } 
	{ regions_3_address1 sc_out sc_lv 12 signal 20 } 
	{ regions_3_ce1 sc_out sc_logic 1 signal 20 } 
	{ regions_3_we1 sc_out sc_logic 1 signal 20 } 
	{ regions_3_d1 sc_out sc_lv 32 signal 20 } 
	{ regions_3_q1 sc_in sc_lv 32 signal 20 } 
	{ regions_4_address0 sc_out sc_lv 12 signal 21 } 
	{ regions_4_ce0 sc_out sc_logic 1 signal 21 } 
	{ regions_4_we0 sc_out sc_logic 1 signal 21 } 
	{ regions_4_d0 sc_out sc_lv 32 signal 21 } 
	{ regions_4_q0 sc_in sc_lv 32 signal 21 } 
	{ regions_4_address1 sc_out sc_lv 12 signal 21 } 
	{ regions_4_ce1 sc_out sc_logic 1 signal 21 } 
	{ regions_4_we1 sc_out sc_logic 1 signal 21 } 
	{ regions_4_d1 sc_out sc_lv 32 signal 21 } 
	{ regions_4_q1 sc_in sc_lv 32 signal 21 } 
	{ regions_5_address0 sc_out sc_lv 12 signal 22 } 
	{ regions_5_ce0 sc_out sc_logic 1 signal 22 } 
	{ regions_5_we0 sc_out sc_logic 1 signal 22 } 
	{ regions_5_d0 sc_out sc_lv 32 signal 22 } 
	{ regions_5_q0 sc_in sc_lv 32 signal 22 } 
	{ regions_5_address1 sc_out sc_lv 12 signal 22 } 
	{ regions_5_ce1 sc_out sc_logic 1 signal 22 } 
	{ regions_5_we1 sc_out sc_logic 1 signal 22 } 
	{ regions_5_d1 sc_out sc_lv 32 signal 22 } 
	{ regions_5_q1 sc_in sc_lv 32 signal 22 } 
	{ n_regions_V_address0 sc_out sc_lv 6 signal 23 } 
	{ n_regions_V_ce0 sc_out sc_logic 1 signal 23 } 
	{ n_regions_V_we0 sc_out sc_logic 1 signal 23 } 
	{ n_regions_V_d0 sc_out sc_lv 8 signal 23 } 
	{ n_regions_V_q0 sc_in sc_lv 8 signal 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "errorInTask_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "errorInTask", "role": "address0" }} , 
 	{ "name": "errorInTask_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "ce0" }} , 
 	{ "name": "errorInTask_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "we0" }} , 
 	{ "name": "errorInTask_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "d0" }} , 
 	{ "name": "errorInTask_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "q0" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "copyInputAOV_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "copyInputAOV_in", "role": "dout" }} , 
 	{ "name": "copyInputAOV_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "copyInputAOV_in", "role": "num_data_valid" }} , 
 	{ "name": "copyInputAOV_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "copyInputAOV_in", "role": "fifo_cap" }} , 
 	{ "name": "copyInputAOV_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "copyInputAOV_in", "role": "empty_n" }} , 
 	{ "name": "copyInputAOV_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "copyInputAOV_in", "role": "read" }} , 
 	{ "name": "copyInputAOV_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "copyInputAOV_out", "role": "default" }} , 
 	{ "name": "copyInputAOV_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "copyInputAOV_out", "role": "ap_vld" }} , 
 	{ "name": "p_read311", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read311", "role": "default" }} , 
 	{ "name": "toScheduler_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "toScheduler", "role": "TDATA" }} , 
 	{ "name": "toScheduler_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "toScheduler", "role": "TVALID" }} , 
 	{ "name": "toScheduler_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "toScheduler", "role": "TREADY" }} , 
 	{ "name": "outcomeInRam_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "address0" }} , 
 	{ "name": "outcomeInRam_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "ce0" }} , 
 	{ "name": "outcomeInRam_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "we0" }} , 
 	{ "name": "outcomeInRam_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "d0" }} , 
 	{ "name": "regions_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions", "role": "address0" }} , 
 	{ "name": "regions_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "ce0" }} , 
 	{ "name": "regions_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "we0" }} , 
 	{ "name": "regions_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions", "role": "d0" }} , 
 	{ "name": "regions_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions", "role": "q0" }} , 
 	{ "name": "regions_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions", "role": "address1" }} , 
 	{ "name": "regions_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "ce1" }} , 
 	{ "name": "regions_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions", "role": "we1" }} , 
 	{ "name": "regions_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions", "role": "d1" }} , 
 	{ "name": "regions_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions", "role": "q1" }} , 
 	{ "name": "regions_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_1", "role": "address0" }} , 
 	{ "name": "regions_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_1", "role": "ce0" }} , 
 	{ "name": "regions_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_1", "role": "we0" }} , 
 	{ "name": "regions_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_1", "role": "d0" }} , 
 	{ "name": "regions_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_1", "role": "q0" }} , 
 	{ "name": "regions_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_1", "role": "address1" }} , 
 	{ "name": "regions_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_1", "role": "ce1" }} , 
 	{ "name": "regions_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_1", "role": "we1" }} , 
 	{ "name": "regions_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_1", "role": "d1" }} , 
 	{ "name": "regions_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_1", "role": "q1" }} , 
 	{ "name": "regions_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_2", "role": "address0" }} , 
 	{ "name": "regions_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "ce0" }} , 
 	{ "name": "regions_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "we0" }} , 
 	{ "name": "regions_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_2", "role": "d0" }} , 
 	{ "name": "regions_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_2", "role": "q0" }} , 
 	{ "name": "regions_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_2", "role": "address1" }} , 
 	{ "name": "regions_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "ce1" }} , 
 	{ "name": "regions_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_2", "role": "we1" }} , 
 	{ "name": "regions_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_2", "role": "d1" }} , 
 	{ "name": "regions_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_2", "role": "q1" }} , 
 	{ "name": "regions_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_3", "role": "address0" }} , 
 	{ "name": "regions_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "ce0" }} , 
 	{ "name": "regions_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "we0" }} , 
 	{ "name": "regions_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "d0" }} , 
 	{ "name": "regions_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "q0" }} , 
 	{ "name": "regions_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_3", "role": "address1" }} , 
 	{ "name": "regions_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "ce1" }} , 
 	{ "name": "regions_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_3", "role": "we1" }} , 
 	{ "name": "regions_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "d1" }} , 
 	{ "name": "regions_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "q1" }} , 
 	{ "name": "regions_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_4", "role": "address0" }} , 
 	{ "name": "regions_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_4", "role": "ce0" }} , 
 	{ "name": "regions_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_4", "role": "we0" }} , 
 	{ "name": "regions_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_4", "role": "d0" }} , 
 	{ "name": "regions_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_4", "role": "q0" }} , 
 	{ "name": "regions_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_4", "role": "address1" }} , 
 	{ "name": "regions_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_4", "role": "ce1" }} , 
 	{ "name": "regions_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_4", "role": "we1" }} , 
 	{ "name": "regions_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_4", "role": "d1" }} , 
 	{ "name": "regions_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_4", "role": "q1" }} , 
 	{ "name": "regions_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_5", "role": "address0" }} , 
 	{ "name": "regions_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_5", "role": "ce0" }} , 
 	{ "name": "regions_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_5", "role": "we0" }} , 
 	{ "name": "regions_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_5", "role": "d0" }} , 
 	{ "name": "regions_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_5", "role": "q0" }} , 
 	{ "name": "regions_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_5", "role": "address1" }} , 
 	{ "name": "regions_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_5", "role": "ce1" }} , 
 	{ "name": "regions_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_5", "role": "we1" }} , 
 	{ "name": "regions_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_5", "role": "d1" }} , 
 	{ "name": "regions_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_5", "role": "q1" }} , 
 	{ "name": "n_regions_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "n_regions_V", "role": "address0" }} , 
 	{ "name": "n_regions_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_regions_V", "role": "ce0" }} , 
 	{ "name": "n_regions_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_regions_V", "role": "we0" }} , 
 	{ "name": "n_regions_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions_V", "role": "d0" }} , 
 	{ "name": "n_regions_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "26", "37", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "runTestAfterInit_Block_entry1119_proc7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1206",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_writeOutcome_fu_350", "Port" : "errorInTask", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "copyInputAOV_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "copyInputAOV_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "copyInputAOV_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read311", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_writeOutcome_fu_350", "Port" : "toScheduler", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_writeOutcome_fu_350", "Port" : "outcomeInRam", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_min_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_min_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_min_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_min_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_max_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_max_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_max_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_max_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "regions_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_center_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_center_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "regions_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_289", "Port" : "regions_center_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_find_region_fu_324", "Port" : "regions_center_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_fu_289", "Port" : "n_regions", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289", "Parent" : "0", "Child" : ["2", "5", "8", "20"],
		"CDFG" : "insert_point",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "1204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_min_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_min_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "20", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_min_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_min_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_min_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_min_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "20", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_min_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_max_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_max_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "20", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_max_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_max_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_max_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "20", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_max_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_center_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_center_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "20", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_center_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_768", "Port" : "regions_center_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "8", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Port" : "regions_center_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "20", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_813", "Port" : "regions_center_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "n_regions", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_44", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_is_valid_label2_fu_748", "Parent" : "1", "Child" : ["3", "4"],
		"CDFG" : "insert_point_Pipeline_is_valid_label2",
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
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_14", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "NotSupport"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_is_valid_label2_fu_748.mux_84_32_1_1_U8", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_is_valid_label2_fu_748.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label4_fu_768", "Parent" : "1", "Child" : ["6", "7"],
		"CDFG" : "insert_point_Pipeline_insert_point_label4",
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
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_121", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "n_regions_load_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "insert_point_label4", "PipelineType" : "NotSupport"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label4_fu_768.mux_84_32_1_1_U18", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label4_fu_768.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794", "Parent" : "1", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "insert_point_Pipeline_VITIS_LOOP_267_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "1134",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln248_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "merge_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "merge_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_267_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.fsub_32ns_32ns_32_4_full_dsp_1_U39", "Parent" : "8"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.faddfsub_32ns_32ns_32_4_full_dsp_1_U40", "Parent" : "8"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.faddfsub_32ns_32ns_32_4_full_dsp_1_U41", "Parent" : "8"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.fadd_32ns_32ns_32_4_full_dsp_1_U42", "Parent" : "8"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U48", "Parent" : "8"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U49", "Parent" : "8"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U50", "Parent" : "8"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U51", "Parent" : "8"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U52", "Parent" : "8"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.mux_21_32_1_1_U53", "Parent" : "8"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_VITIS_LOOP_267_1_fu_794.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813", "Parent" : "1", "Child" : ["21", "22", "23", "24", "25"],
		"CDFG" : "insert_point_Pipeline_insert_point_label6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln256_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln256_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_127", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_130", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "insert_point_label6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813.mux_21_32_1_1_U70", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813.mux_21_32_1_1_U71", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813.mux_21_32_1_1_U72", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813.mux_21_32_1_1_U73", "Parent" : "20"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_fu_289.grp_insert_point_Pipeline_insert_point_label6_fu_813.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_324", "Parent" : "0", "Child" : ["27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "find_region",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "116",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_min_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "n_regions", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_66", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_37_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_324.fdiv_32ns_32ns_32_10_no_dsp_1_U115", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_324.fcmp_32ns_32ns_1_2_no_dsp_1_U119", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_324.fcmp_32ns_32ns_1_2_no_dsp_1_U120", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_324.mux_21_32_1_1_U121", "Parent" : "26"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_324.mux_21_32_1_1_U122", "Parent" : "26"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_324.mux_21_32_1_1_U123", "Parent" : "26"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_324.mux_21_32_1_1_U124", "Parent" : "26"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_324.mux_21_32_1_1_U125", "Parent" : "26"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_324.mux_21_32_1_1_U126", "Parent" : "26"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_324.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_350", "Parent" : "0", "Child" : ["38", "39"],
		"CDFG" : "writeOutcome",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "errorInTask1", "Type" : "None", "Direction" : "I"},
			{"Name" : "checkId", "Type" : "None", "Direction" : "I"},
			{"Name" : "taskId", "Type" : "None", "Direction" : "I"},
			{"Name" : "uniId", "Type" : "None", "Direction" : "I"},
			{"Name" : "error", "Type" : "None", "Direction" : "I"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "toScheduler_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_350.outcome_AOV_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_writeOutcome_fu_350.mux_84_32_1_1_U144", "Parent" : "37"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U162", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U163", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U164", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_32_1_1_U165", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U166", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U167", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U168", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_4_full_dsp_1_U169", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_4_full_dsp_1_U170", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_4_full_dsp_1_U171", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_4_full_dsp_1_U172", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U173", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U174", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	runTestAfterInit_Block_entry1119_proc7 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		errorInTask {Type IO LastRead 0 FirstWrite 6}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		copyInputAOV_in {Type I LastRead 0 FirstWrite -1}
		copyInputAOV_out {Type O LastRead -1 FirstWrite 5}
		p_read311 {Type I LastRead 0 FirstWrite -1}
		toScheduler {Type O LastRead -1 FirstWrite 6}
		outcomeInRam {Type O LastRead -1 FirstWrite 5}
		regions {Type IO LastRead 9 FirstWrite -1}
		regions_1 {Type IO LastRead 12 FirstWrite -1}
		regions_2 {Type IO LastRead 9 FirstWrite -1}
		regions_3 {Type IO LastRead 12 FirstWrite -1}
		regions_4 {Type IO LastRead 9 FirstWrite -1}
		regions_5 {Type IO LastRead 12 FirstWrite -1}
		n_regions_V {Type IO LastRead 2 FirstWrite 2}}
	insert_point {
		regions_min_0 {Type IO LastRead 9 FirstWrite -1}
		regions_min_0_offset {Type I LastRead 1 FirstWrite -1}
		regions_min_1 {Type IO LastRead 12 FirstWrite -1}
		regions_max_0 {Type IO LastRead 9 FirstWrite -1}
		regions_max_1 {Type IO LastRead 12 FirstWrite -1}
		regions_center_0 {Type IO LastRead 9 FirstWrite -1}
		regions_center_1 {Type IO LastRead 12 FirstWrite -1}
		n_regions {Type IO LastRead 1 FirstWrite 2}
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_38 {Type I LastRead 0 FirstWrite -1}
		d_read_39 {Type I LastRead 0 FirstWrite -1}
		d_read_40 {Type I LastRead 0 FirstWrite -1}
		d_read_41 {Type I LastRead 0 FirstWrite -1}
		d_read_42 {Type I LastRead 0 FirstWrite -1}
		d_read_43 {Type I LastRead 0 FirstWrite -1}
		d_read_44 {Type I LastRead 0 FirstWrite -1}}
	insert_point_Pipeline_is_valid_label2 {
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_8 {Type I LastRead 0 FirstWrite -1}
		d_read_9 {Type I LastRead 0 FirstWrite -1}
		d_read_10 {Type I LastRead 0 FirstWrite -1}
		d_read_11 {Type I LastRead 0 FirstWrite -1}
		d_read_12 {Type I LastRead 0 FirstWrite -1}
		d_read_13 {Type I LastRead 0 FirstWrite -1}
		d_read_14 {Type I LastRead 0 FirstWrite -1}}
	insert_point_Pipeline_insert_point_label4 {
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_8 {Type I LastRead 0 FirstWrite -1}
		d_read_9 {Type I LastRead 0 FirstWrite -1}
		d_read_10 {Type I LastRead 0 FirstWrite -1}
		d_read_11 {Type I LastRead 0 FirstWrite -1}
		d_read_12 {Type I LastRead 0 FirstWrite -1}
		d_read_13 {Type I LastRead 0 FirstWrite -1}
		d_read_14 {Type I LastRead 0 FirstWrite -1}
		tmp_121 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type O LastRead -1 FirstWrite 0}
		regions_min_1 {Type O LastRead -1 FirstWrite 0}
		regions_max_0 {Type O LastRead -1 FirstWrite 0}
		regions_max_1 {Type O LastRead -1 FirstWrite 0}
		regions_center_0 {Type O LastRead -1 FirstWrite 0}
		regions_center_1 {Type O LastRead -1 FirstWrite 0}
		n_regions_load_cast {Type I LastRead 0 FirstWrite -1}}
	insert_point_Pipeline_VITIS_LOOP_267_1 {
		zext_ln248_1 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type I LastRead 9 FirstWrite -1}
		regions_min_1 {Type I LastRead 9 FirstWrite -1}
		regions_max_0 {Type I LastRead 9 FirstWrite -1}
		regions_max_1 {Type I LastRead 9 FirstWrite -1}
		regions_center_0 {Type I LastRead 9 FirstWrite -1}
		regions_center_1 {Type I LastRead 9 FirstWrite -1}
		merge_2_out {Type O LastRead -1 FirstWrite 45}
		merge_1_out {Type O LastRead -1 FirstWrite 45}}
	insert_point_Pipeline_insert_point_label6 {
		trunc_ln256_5 {Type I LastRead 0 FirstWrite -1}
		trunc_ln256_7 {Type I LastRead 0 FirstWrite -1}
		tmp_127 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type IO LastRead 1 FirstWrite 3}
		tmp_130 {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type IO LastRead 1 FirstWrite 3}
		regions_max_0 {Type IO LastRead 1 FirstWrite 3}
		regions_max_1 {Type IO LastRead 1 FirstWrite 3}
		regions_center_0 {Type O LastRead -1 FirstWrite 10}
		regions_center_1 {Type O LastRead -1 FirstWrite 10}}
	find_region {
		regions_min_0 {Type I LastRead 4 FirstWrite -1}
		regions_min_0_offset {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type I LastRead 4 FirstWrite -1}
		regions_max_0 {Type I LastRead 4 FirstWrite -1}
		regions_max_1 {Type I LastRead 4 FirstWrite -1}
		regions_center_0 {Type I LastRead 4 FirstWrite -1}
		regions_center_1 {Type I LastRead 4 FirstWrite -1}
		n_regions {Type I LastRead 0 FirstWrite -1}
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_60 {Type I LastRead 0 FirstWrite -1}
		d_read_61 {Type I LastRead 0 FirstWrite -1}
		d_read_62 {Type I LastRead 0 FirstWrite -1}
		d_read_63 {Type I LastRead 0 FirstWrite -1}
		d_read_64 {Type I LastRead 0 FirstWrite -1}
		d_read_65 {Type I LastRead 0 FirstWrite -1}
		d_read_66 {Type I LastRead 0 FirstWrite -1}}
	writeOutcome {
		errorInTask {Type O LastRead -1 FirstWrite 6}
		errorInTask1 {Type I LastRead 0 FirstWrite -1}
		checkId {Type I LastRead 0 FirstWrite -1}
		taskId {Type I LastRead 0 FirstWrite -1}
		uniId {Type I LastRead 0 FirstWrite -1}
		error {Type I LastRead 0 FirstWrite -1}
		toScheduler {Type O LastRead -1 FirstWrite 6}
		outcomeInRam {Type O LastRead -1 FirstWrite 5}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1206"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1206"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 8 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
	errorInTask { ap_memory {  { errorInTask_address0 mem_address 1 4 }  { errorInTask_ce0 mem_ce 1 1 }  { errorInTask_we0 mem_we 1 1 }  { errorInTask_d0 mem_din 1 1 }  { errorInTask_q0 in_data 0 1 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 32 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 32 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 32 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 32 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 32 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 32 } } }
	copyInputAOV_in { ap_fifo {  { copyInputAOV_in_dout fifo_port_we 0 8 }  { copyInputAOV_in_num_data_valid fifo_status_num_data_valid 0 2 }  { copyInputAOV_in_fifo_cap fifo_update 0 2 }  { copyInputAOV_in_empty_n fifo_status 0 1 }  { copyInputAOV_in_read fifo_data 1 1 } } }
	copyInputAOV_out { ap_vld {  { copyInputAOV_out out_data 1 8 }  { copyInputAOV_out_ap_vld out_vld 1 1 } } }
	p_read311 { ap_none {  { p_read311 in_data 0 16 } } }
	toScheduler { axis {  { toScheduler_TDATA out_data 1 8 }  { toScheduler_TVALID out_vld 1 1 }  { toScheduler_TREADY out_acc 0 1 } } }
	outcomeInRam { ap_memory {  { outcomeInRam_address0 mem_address 1 4 }  { outcomeInRam_ce0 mem_ce 1 1 }  { outcomeInRam_we0 mem_we 1 36 }  { outcomeInRam_d0 mem_din 1 288 } } }
	regions { ap_memory {  { regions_address0 mem_address 1 12 }  { regions_ce0 mem_ce 1 1 }  { regions_we0 mem_we 1 1 }  { regions_d0 mem_din 1 32 }  { regions_q0 mem_dout 0 32 }  { regions_address1 MemPortADDR2 1 12 }  { regions_ce1 MemPortCE2 1 1 }  { regions_we1 MemPortWE2 1 1 }  { regions_d1 MemPortDIN2 1 32 }  { regions_q1 MemPortDOUT2 0 32 } } }
	regions_1 { ap_memory {  { regions_1_address0 mem_address 1 12 }  { regions_1_ce0 mem_ce 1 1 }  { regions_1_we0 mem_we 1 1 }  { regions_1_d0 mem_din 1 32 }  { regions_1_q0 mem_dout 0 32 }  { regions_1_address1 MemPortADDR2 1 12 }  { regions_1_ce1 MemPortCE2 1 1 }  { regions_1_we1 MemPortWE2 1 1 }  { regions_1_d1 MemPortDIN2 1 32 }  { regions_1_q1 MemPortDOUT2 0 32 } } }
	regions_2 { ap_memory {  { regions_2_address0 mem_address 1 12 }  { regions_2_ce0 mem_ce 1 1 }  { regions_2_we0 mem_we 1 1 }  { regions_2_d0 mem_din 1 32 }  { regions_2_q0 mem_dout 0 32 }  { regions_2_address1 MemPortADDR2 1 12 }  { regions_2_ce1 MemPortCE2 1 1 }  { regions_2_we1 MemPortWE2 1 1 }  { regions_2_d1 MemPortDIN2 1 32 }  { regions_2_q1 MemPortDOUT2 0 32 } } }
	regions_3 { ap_memory {  { regions_3_address0 mem_address 1 12 }  { regions_3_ce0 mem_ce 1 1 }  { regions_3_we0 mem_we 1 1 }  { regions_3_d0 mem_din 1 32 }  { regions_3_q0 mem_dout 0 32 }  { regions_3_address1 MemPortADDR2 1 12 }  { regions_3_ce1 MemPortCE2 1 1 }  { regions_3_we1 MemPortWE2 1 1 }  { regions_3_d1 MemPortDIN2 1 32 }  { regions_3_q1 MemPortDOUT2 0 32 } } }
	regions_4 { ap_memory {  { regions_4_address0 mem_address 1 12 }  { regions_4_ce0 mem_ce 1 1 }  { regions_4_we0 mem_we 1 1 }  { regions_4_d0 mem_din 1 32 }  { regions_4_q0 mem_dout 0 32 }  { regions_4_address1 MemPortADDR2 1 12 }  { regions_4_ce1 MemPortCE2 1 1 }  { regions_4_we1 MemPortWE2 1 1 }  { regions_4_d1 MemPortDIN2 1 32 }  { regions_4_q1 MemPortDOUT2 0 32 } } }
	regions_5 { ap_memory {  { regions_5_address0 mem_address 1 12 }  { regions_5_ce0 mem_ce 1 1 }  { regions_5_we0 mem_we 1 1 }  { regions_5_d0 mem_din 1 32 }  { regions_5_q0 mem_dout 0 32 }  { regions_5_address1 MemPortADDR2 1 12 }  { regions_5_ce1 MemPortCE2 1 1 }  { regions_5_we1 MemPortWE2 1 1 }  { regions_5_d1 MemPortDIN2 1 32 }  { regions_5_q1 MemPortDOUT2 0 32 } } }
	n_regions_V { ap_memory {  { n_regions_V_address0 mem_address 1 6 }  { n_regions_V_ce0 mem_ce 1 1 }  { n_regions_V_we0 mem_we 1 1 }  { n_regions_V_d0 mem_din 1 8 }  { n_regions_V_q0 mem_dout 0 8 } } }
}
