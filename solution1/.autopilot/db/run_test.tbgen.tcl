set moduleName run_test
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {run_test}
set C_modelType { int 1 }
set C_modelArgList {
	{ taskId int 16 regular {fifo 0}  }
	{ p_read1 int 8 regular  }
	{ taskId_c int 16 regular {fifo 1}  }
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1 float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data float 32 regular {array 128 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "taskId", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "taskId_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ taskId_dout sc_in sc_lv 16 signal 0 } 
	{ taskId_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ taskId_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ taskId_empty_n sc_in sc_logic 1 signal 0 } 
	{ taskId_read sc_out sc_logic 1 signal 0 } 
	{ p_read1 sc_in sc_lv 8 signal 1 } 
	{ taskId_c_din sc_out sc_lv 16 signal 2 } 
	{ taskId_c_num_data_valid sc_in sc_lv 4 signal 2 } 
	{ taskId_c_fifo_cap sc_in sc_lv 4 signal 2 } 
	{ taskId_c_full_n sc_in sc_logic 1 signal 2 } 
	{ taskId_c_write sc_out sc_logic 1 signal 2 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7_address0 sc_out sc_lv 7 signal 3 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7_ce0 sc_out sc_logic 1 signal 3 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7_q0 sc_in sc_lv 32 signal 3 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6_address0 sc_out sc_lv 7 signal 4 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6_q0 sc_in sc_lv 32 signal 4 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5_address0 sc_out sc_lv 7 signal 5 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5_q0 sc_in sc_lv 32 signal 5 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4_address0 sc_out sc_lv 7 signal 6 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4_q0 sc_in sc_lv 32 signal 6 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3_address0 sc_out sc_lv 7 signal 7 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3_q0 sc_in sc_lv 32 signal 7 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2_address0 sc_out sc_lv 7 signal 8 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2_q0 sc_in sc_lv 32 signal 8 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1_address0 sc_out sc_lv 7 signal 9 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1_q0 sc_in sc_lv 32 signal 9 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_address0 sc_out sc_lv 7 signal 10 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_ce0 sc_out sc_logic 1 signal 10 } 
	{ run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_q0 sc_in sc_lv 32 signal 10 } 
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
 	{ "name": "taskId_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "taskId", "role": "dout" }} , 
 	{ "name": "taskId_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "taskId", "role": "num_data_valid" }} , 
 	{ "name": "taskId_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "taskId", "role": "fifo_cap" }} , 
 	{ "name": "taskId_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskId", "role": "empty_n" }} , 
 	{ "name": "taskId_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskId", "role": "read" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "taskId_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "taskId_c", "role": "din" }} , 
 	{ "name": "taskId_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "taskId_c", "role": "num_data_valid" }} , 
 	{ "name": "taskId_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "taskId_c", "role": "fifo_cap" }} , 
 	{ "name": "taskId_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskId_c", "role": "full_n" }} , 
 	{ "name": "taskId_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "taskId_c", "role": "write" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7", "role": "address0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7", "role": "ce0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7", "role": "q0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6", "role": "address0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6", "role": "ce0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6", "role": "q0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5", "role": "address0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5", "role": "ce0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5", "role": "q0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4", "role": "address0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4", "role": "ce0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4", "role": "q0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3", "role": "address0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3", "role": "ce0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3", "role": "q0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2", "role": "address0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2", "role": "ce0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2", "role": "q0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1", "role": "address0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1", "role": "ce0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1", "role": "q0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data", "role": "address0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data", "role": "ce0" }} , 
 	{ "name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "5", "6"],
		"CDFG" : "run_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "27", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "taskId", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "taskId_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "10", "DependentChanType" : "1"},
			{"Name" : "taskId_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "taskId_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_208", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "find_region",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "9", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_regions", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_29", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_208.fcmp_32ns_32ns_1_2_no_dsp_1_U17", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_region_fu_208.fcmp_32ns_32ns_1_2_no_dsp_1_U18", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_x_U29", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_x_U30", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_x_U31", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run_test {
		taskId {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 7 FirstWrite -1}
		taskId_c {Type O LastRead -1 FirstWrite 0}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7 {Type I LastRead 0 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6 {Type I LastRead 2 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5 {Type I LastRead 4 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4 {Type I LastRead 6 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3 {Type I LastRead 8 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2 {Type I LastRead 11 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1 {Type I LastRead 13 FirstWrite -1}
		run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data {Type I LastRead 15 FirstWrite -1}}
	find_region {
		n_regions {Type I LastRead 0 FirstWrite -1}
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_23 {Type I LastRead 1 FirstWrite -1}
		d_read_24 {Type I LastRead 2 FirstWrite -1}
		d_read_25 {Type I LastRead 3 FirstWrite -1}
		d_read_26 {Type I LastRead 4 FirstWrite -1}
		d_read_27 {Type I LastRead 6 FirstWrite -1}
		d_read_28 {Type I LastRead 5 FirstWrite -1}
		d_read_29 {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "27", "Max" : "27"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	taskId { ap_fifo {  { taskId_dout fifo_port_we 0 16 }  { taskId_num_data_valid fifo_status_num_data_valid 0 5 }  { taskId_fifo_cap fifo_update 0 5 }  { taskId_empty_n fifo_status 0 1 }  { taskId_read fifo_data 1 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
	taskId_c { ap_fifo {  { taskId_c_din fifo_port_we 1 16 }  { taskId_c_num_data_valid fifo_status_num_data_valid 0 4 }  { taskId_c_fifo_cap fifo_update 0 4 }  { taskId_c_full_n fifo_status 0 1 }  { taskId_c_write fifo_data 1 1 } } }
	run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7 { ap_memory {  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7_address0 mem_address 1 7 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7_ce0 mem_ce 1 1 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_7_q0 in_data 0 32 } } }
	run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6 { ap_memory {  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6_address0 mem_address 1 7 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6_ce0 mem_ce 1 1 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_6_q0 in_data 0 32 } } }
	run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5 { ap_memory {  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5_address0 mem_address 1 7 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5_ce0 mem_ce 1 1 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_5_q0 in_data 0 32 } } }
	run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4 { ap_memory {  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4_address0 mem_address 1 7 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4_ce0 mem_ce 1 1 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_4_q0 in_data 0 32 } } }
	run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3 { ap_memory {  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3_address0 mem_address 1 7 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3_ce0 mem_ce 1 1 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_3_q0 mem_dout 0 32 } } }
	run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2 { ap_memory {  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2_address0 mem_address 1 7 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2_ce0 mem_ce 1 1 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_2_q0 in_data 0 32 } } }
	run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1 { ap_memory {  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1_address0 mem_address 1 7 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1_ce0 mem_ce 1 1 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_1_q0 in_data 0 32 } } }
	run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data { ap_memory {  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_address0 mem_address 1 7 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_ce0 mem_ce 1 1 }  { run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_q0 in_data 0 32 } } }
}
