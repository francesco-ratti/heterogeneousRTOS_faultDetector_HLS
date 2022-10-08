set moduleName run_test_Pipeline_VITIS_LOOP_72_1
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
set C_modelName {run_test_Pipeline_VITIS_LOOP_72_1}
set C_modelType { int 1 }
set C_modelArgList {
	{ n_regions int 8 regular  }
	{ zext_ln76_1 int 9 regular  }
	{ regions_min_0 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ regions_min_1 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ regions_max_0 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ regions_max_1 float 32 regular {array 4096 { 1 3 } 1 1 }  }
	{ bitcast_ln76_1 int 31 regular  }
	{ icmp_ln76_3 int 1 regular  }
	{ p_read1 float 32 regular  }
	{ bitcast_ln76_3 int 31 regular  }
	{ icmp_ln76_6 int 1 regular  }
	{ p_read2 float 32 regular  }
	{ bitcast_ln76_5 int 31 regular  }
	{ icmp_ln76_7 int 1 regular  }
	{ p_read3 float 32 regular  }
	{ bitcast_ln76_7 int 31 regular  }
	{ icmp_ln76_11 int 1 regular  }
	{ p_read4 float 32 regular  }
	{ bitcast_ln76_9 int 31 regular  }
	{ icmp_ln76_14 int 1 regular  }
	{ p_read5 float 32 regular  }
	{ bitcast_ln76_11 int 31 regular  }
	{ icmp_ln76_15 int 1 regular  }
	{ p_read6 float 32 regular  }
	{ bitcast_ln76_13 int 31 regular  }
	{ icmp_ln76_19 int 1 regular  }
	{ p_read7 float 32 regular  }
	{ bitcast_ln76_15 int 31 regular  }
	{ icmp_ln76_22 int 1 regular  }
	{ p_read8 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "n_regions", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln76_1", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "regions_min_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_min_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_max_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_max_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln76_1", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln76_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln76_3", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln76_6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln76_5", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln76_7", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln76_7", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln76_11", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln76_9", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln76_14", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln76_11", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln76_15", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln76_13", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln76_19", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln76_15", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "icmp_ln76_22", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ n_regions sc_in sc_lv 8 signal 0 } 
	{ zext_ln76_1 sc_in sc_lv 9 signal 1 } 
	{ regions_min_0_address0 sc_out sc_lv 12 signal 2 } 
	{ regions_min_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ regions_min_0_q0 sc_in sc_lv 32 signal 2 } 
	{ regions_min_1_address0 sc_out sc_lv 12 signal 3 } 
	{ regions_min_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ regions_min_1_q0 sc_in sc_lv 32 signal 3 } 
	{ regions_max_0_address0 sc_out sc_lv 12 signal 4 } 
	{ regions_max_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ regions_max_0_q0 sc_in sc_lv 32 signal 4 } 
	{ regions_max_1_address0 sc_out sc_lv 12 signal 5 } 
	{ regions_max_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ regions_max_1_q0 sc_in sc_lv 32 signal 5 } 
	{ bitcast_ln76_1 sc_in sc_lv 31 signal 6 } 
	{ icmp_ln76_3 sc_in sc_lv 1 signal 7 } 
	{ p_read1 sc_in sc_lv 32 signal 8 } 
	{ bitcast_ln76_3 sc_in sc_lv 31 signal 9 } 
	{ icmp_ln76_6 sc_in sc_lv 1 signal 10 } 
	{ p_read2 sc_in sc_lv 32 signal 11 } 
	{ bitcast_ln76_5 sc_in sc_lv 31 signal 12 } 
	{ icmp_ln76_7 sc_in sc_lv 1 signal 13 } 
	{ p_read3 sc_in sc_lv 32 signal 14 } 
	{ bitcast_ln76_7 sc_in sc_lv 31 signal 15 } 
	{ icmp_ln76_11 sc_in sc_lv 1 signal 16 } 
	{ p_read4 sc_in sc_lv 32 signal 17 } 
	{ bitcast_ln76_9 sc_in sc_lv 31 signal 18 } 
	{ icmp_ln76_14 sc_in sc_lv 1 signal 19 } 
	{ p_read5 sc_in sc_lv 32 signal 20 } 
	{ bitcast_ln76_11 sc_in sc_lv 31 signal 21 } 
	{ icmp_ln76_15 sc_in sc_lv 1 signal 22 } 
	{ p_read6 sc_in sc_lv 32 signal 23 } 
	{ bitcast_ln76_13 sc_in sc_lv 31 signal 24 } 
	{ icmp_ln76_19 sc_in sc_lv 1 signal 25 } 
	{ p_read7 sc_in sc_lv 32 signal 26 } 
	{ bitcast_ln76_15 sc_in sc_lv 31 signal 27 } 
	{ icmp_ln76_22 sc_in sc_lv 1 signal 28 } 
	{ p_read8 sc_in sc_lv 32 signal 29 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
	{ grp_fu_508_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_508_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_508_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_508_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_508_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "n_regions", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions", "role": "default" }} , 
 	{ "name": "zext_ln76_1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln76_1", "role": "default" }} , 
 	{ "name": "regions_min_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_0", "role": "address0" }} , 
 	{ "name": "regions_min_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_0", "role": "ce0" }} , 
 	{ "name": "regions_min_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "q0" }} , 
 	{ "name": "regions_min_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_1", "role": "address0" }} , 
 	{ "name": "regions_min_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_1", "role": "ce0" }} , 
 	{ "name": "regions_min_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_1", "role": "q0" }} , 
 	{ "name": "regions_max_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_0", "role": "address0" }} , 
 	{ "name": "regions_max_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_0", "role": "ce0" }} , 
 	{ "name": "regions_max_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_0", "role": "q0" }} , 
 	{ "name": "regions_max_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_1", "role": "address0" }} , 
 	{ "name": "regions_max_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_1", "role": "ce0" }} , 
 	{ "name": "regions_max_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_1", "role": "q0" }} , 
 	{ "name": "bitcast_ln76_1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln76_1", "role": "default" }} , 
 	{ "name": "icmp_ln76_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln76_3", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "bitcast_ln76_3", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln76_3", "role": "default" }} , 
 	{ "name": "icmp_ln76_6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln76_6", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "bitcast_ln76_5", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln76_5", "role": "default" }} , 
 	{ "name": "icmp_ln76_7", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln76_7", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "bitcast_ln76_7", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln76_7", "role": "default" }} , 
 	{ "name": "icmp_ln76_11", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln76_11", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "bitcast_ln76_9", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln76_9", "role": "default" }} , 
 	{ "name": "icmp_ln76_14", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln76_14", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "bitcast_ln76_11", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln76_11", "role": "default" }} , 
 	{ "name": "icmp_ln76_15", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln76_15", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "bitcast_ln76_13", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln76_13", "role": "default" }} , 
 	{ "name": "icmp_ln76_19", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln76_19", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "bitcast_ln76_15", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "bitcast_ln76_15", "role": "default" }} , 
 	{ "name": "icmp_ln76_22", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "icmp_ln76_22", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "grp_fu_508_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_508_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_508_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_508_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_508_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_508_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_508_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_508_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_508_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_508_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "run_test_Pipeline_VITIS_LOOP_72_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "n_regions", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln76_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitcast_ln76_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U117", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U118", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run_test_Pipeline_VITIS_LOOP_72_1 {
		n_regions {Type I LastRead 0 FirstWrite -1}
		zext_ln76_1 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type I LastRead 28 FirstWrite -1}
		regions_min_1 {Type I LastRead 28 FirstWrite -1}
		regions_max_0 {Type I LastRead 30 FirstWrite -1}
		regions_max_1 {Type I LastRead 30 FirstWrite -1}
		bitcast_ln76_1 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_3 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_3 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_6 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_5 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_7 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_7 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_11 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_9 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_14 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_11 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_15 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_13 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_19 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_15 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_22 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "562"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "562"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	n_regions { ap_none {  { n_regions in_data 0 8 } } }
	zext_ln76_1 { ap_none {  { zext_ln76_1 in_data 0 9 } } }
	regions_min_0 { ap_memory {  { regions_min_0_address0 mem_address 1 12 }  { regions_min_0_ce0 mem_ce 1 1 }  { regions_min_0_q0 in_data 0 32 } } }
	regions_min_1 { ap_memory {  { regions_min_1_address0 mem_address 1 12 }  { regions_min_1_ce0 mem_ce 1 1 }  { regions_min_1_q0 in_data 0 32 } } }
	regions_max_0 { ap_memory {  { regions_max_0_address0 mem_address 1 12 }  { regions_max_0_ce0 mem_ce 1 1 }  { regions_max_0_q0 in_data 0 32 } } }
	regions_max_1 { ap_memory {  { regions_max_1_address0 mem_address 1 12 }  { regions_max_1_ce0 mem_ce 1 1 }  { regions_max_1_q0 in_data 0 32 } } }
	bitcast_ln76_1 { ap_none {  { bitcast_ln76_1 in_data 0 31 } } }
	icmp_ln76_3 { ap_none {  { icmp_ln76_3 in_data 0 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	bitcast_ln76_3 { ap_none {  { bitcast_ln76_3 in_data 0 31 } } }
	icmp_ln76_6 { ap_none {  { icmp_ln76_6 in_data 0 1 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	bitcast_ln76_5 { ap_none {  { bitcast_ln76_5 in_data 0 31 } } }
	icmp_ln76_7 { ap_none {  { icmp_ln76_7 in_data 0 1 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	bitcast_ln76_7 { ap_none {  { bitcast_ln76_7 in_data 0 31 } } }
	icmp_ln76_11 { ap_none {  { icmp_ln76_11 in_data 0 1 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 32 } } }
	bitcast_ln76_9 { ap_none {  { bitcast_ln76_9 in_data 0 31 } } }
	icmp_ln76_14 { ap_none {  { icmp_ln76_14 in_data 0 1 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
	bitcast_ln76_11 { ap_none {  { bitcast_ln76_11 in_data 0 31 } } }
	icmp_ln76_15 { ap_none {  { icmp_ln76_15 in_data 0 1 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 32 } } }
	bitcast_ln76_13 { ap_none {  { bitcast_ln76_13 in_data 0 31 } } }
	icmp_ln76_19 { ap_none {  { icmp_ln76_19 in_data 0 1 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 32 } } }
	bitcast_ln76_15 { ap_none {  { bitcast_ln76_15 in_data 0 31 } } }
	icmp_ln76_22 { ap_none {  { icmp_ln76_22 in_data 0 1 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 32 } } }
}
