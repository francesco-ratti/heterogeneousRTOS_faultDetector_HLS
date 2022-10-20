set moduleName run_test_Pipeline_is_valid_label2
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
set C_modelName {run_test_Pipeline_is_valid_label2}
set C_modelType { int 1 }
set C_modelArgList {
	{ in_AOV float 32 regular  }
	{ in_AOV_1 float 32 regular  }
	{ in_AOV_2 float 32 regular  }
	{ in_AOV_3 float 32 regular  }
	{ in_AOV_4 float 32 regular  }
	{ in_AOV_5 float 32 regular  }
	{ in_AOV_6 float 32 regular  }
	{ in_AOV_7 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_AOV", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_AOV sc_in sc_lv 32 signal 0 } 
	{ in_AOV_1 sc_in sc_lv 32 signal 1 } 
	{ in_AOV_2 sc_in sc_lv 32 signal 2 } 
	{ in_AOV_3 sc_in sc_lv 32 signal 3 } 
	{ in_AOV_4 sc_in sc_lv 32 signal 4 } 
	{ in_AOV_5 sc_in sc_lv 32 signal 5 } 
	{ in_AOV_6 sc_in sc_lv 32 signal 6 } 
	{ in_AOV_7 sc_in sc_lv 32 signal 7 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1356_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1356_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1356_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1356_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1356_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_AOV", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV", "role": "default" }} , 
 	{ "name": "in_AOV_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_1", "role": "default" }} , 
 	{ "name": "in_AOV_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_2", "role": "default" }} , 
 	{ "name": "in_AOV_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_3", "role": "default" }} , 
 	{ "name": "in_AOV_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_4", "role": "default" }} , 
 	{ "name": "in_AOV_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_5", "role": "default" }} , 
 	{ "name": "in_AOV_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_6", "role": "default" }} , 
 	{ "name": "in_AOV_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_7", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "grp_fu_1356_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1356_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1356_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1356_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1356_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1356_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1356_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1356_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1356_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1356_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U18", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U19", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_32_1_1_U20", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run_test_Pipeline_is_valid_label2 {
		in_AOV {Type I LastRead 0 FirstWrite -1}
		in_AOV_1 {Type I LastRead 0 FirstWrite -1}
		in_AOV_2 {Type I LastRead 0 FirstWrite -1}
		in_AOV_3 {Type I LastRead 0 FirstWrite -1}
		in_AOV_4 {Type I LastRead 0 FirstWrite -1}
		in_AOV_5 {Type I LastRead 0 FirstWrite -1}
		in_AOV_6 {Type I LastRead 0 FirstWrite -1}
		in_AOV_7 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "19"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_AOV { ap_none {  { in_AOV in_data 0 32 } } }
	in_AOV_1 { ap_none {  { in_AOV_1 in_data 0 32 } } }
	in_AOV_2 { ap_none {  { in_AOV_2 in_data 0 32 } } }
	in_AOV_3 { ap_none {  { in_AOV_3 in_data 0 32 } } }
	in_AOV_4 { ap_none {  { in_AOV_4 in_data 0 32 } } }
	in_AOV_5 { ap_none {  { in_AOV_5 in_data 0 32 } } }
	in_AOV_6 { ap_none {  { in_AOV_6 in_data 0 32 } } }
	in_AOV_7 { ap_none {  { in_AOV_7 in_data 0 32 } } }
}
