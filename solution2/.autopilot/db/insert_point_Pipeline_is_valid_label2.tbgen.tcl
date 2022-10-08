set moduleName insert_point_Pipeline_is_valid_label2
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
set C_modelName {insert_point_Pipeline_is_valid_label2}
set C_modelType { int 1 }
set C_modelArgList {
	{ d_read float 32 regular  }
	{ d_read_8 float 32 regular  }
	{ d_read_9 float 32 regular  }
	{ d_read_10 float 32 regular  }
	{ d_read_11 float 32 regular  }
	{ d_read_12 float 32 regular  }
	{ d_read_13 float 32 regular  }
	{ d_read_14 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_read sc_in sc_lv 32 signal 0 } 
	{ d_read_8 sc_in sc_lv 32 signal 1 } 
	{ d_read_9 sc_in sc_lv 32 signal 2 } 
	{ d_read_10 sc_in sc_lv 32 signal 3 } 
	{ d_read_11 sc_in sc_lv 32 signal 4 } 
	{ d_read_12 sc_in sc_lv 32 signal 5 } 
	{ d_read_13 sc_in sc_lv 32 signal 6 } 
	{ d_read_14 sc_in sc_lv 32 signal 7 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1711_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1711_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1711_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1711_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1711_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1715_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1715_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1715_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1715_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1715_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1719_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1719_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1719_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1719_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1719_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read", "role": "default" }} , 
 	{ "name": "d_read_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_8", "role": "default" }} , 
 	{ "name": "d_read_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_9", "role": "default" }} , 
 	{ "name": "d_read_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_10", "role": "default" }} , 
 	{ "name": "d_read_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_11", "role": "default" }} , 
 	{ "name": "d_read_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_12", "role": "default" }} , 
 	{ "name": "d_read_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_13", "role": "default" }} , 
 	{ "name": "d_read_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_14", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "grp_fu_1711_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1711_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1711_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1711_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1711_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1711_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1711_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1711_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1711_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1711_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1715_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1715_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1715_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1715_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1715_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1715_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1715_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1715_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1715_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1715_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1719_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1719_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1719_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1719_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1719_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1719_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1719_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1719_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1719_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1719_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_32_1_1_U4", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	insert_point_Pipeline_is_valid_label2 {
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_8 {Type I LastRead 0 FirstWrite -1}
		d_read_9 {Type I LastRead 0 FirstWrite -1}
		d_read_10 {Type I LastRead 0 FirstWrite -1}
		d_read_11 {Type I LastRead 0 FirstWrite -1}
		d_read_12 {Type I LastRead 0 FirstWrite -1}
		d_read_13 {Type I LastRead 0 FirstWrite -1}
		d_read_14 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "19"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d_read { ap_none {  { d_read in_data 0 32 } } }
	d_read_8 { ap_none {  { d_read_8 in_data 0 32 } } }
	d_read_9 { ap_none {  { d_read_9 in_data 0 32 } } }
	d_read_10 { ap_none {  { d_read_10 in_data 0 32 } } }
	d_read_11 { ap_none {  { d_read_11 in_data 0 32 } } }
	d_read_12 { ap_none {  { d_read_12 in_data 0 32 } } }
	d_read_13 { ap_none {  { d_read_13 in_data 0 32 } } }
	d_read_14 { ap_none {  { d_read_14 in_data 0 32 } } }
}
