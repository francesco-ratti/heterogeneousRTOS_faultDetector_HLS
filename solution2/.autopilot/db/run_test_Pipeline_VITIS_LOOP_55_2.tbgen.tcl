set moduleName run_test_Pipeline_VITIS_LOOP_55_2
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
set C_modelName {run_test_Pipeline_VITIS_LOOP_55_2}
set C_modelType { int 2 }
set C_modelArgList {
	{ tmp_16 int 12 regular  }
	{ trunc_ln1 int 1 regular  }
	{ in_AOV float 32 regular  }
	{ in_AOV_1 float 32 regular  }
	{ in_AOV_2 float 32 regular  }
	{ in_AOV_3 float 32 regular  }
	{ in_AOV_4 float 32 regular  }
	{ in_AOV_5 float 32 regular  }
	{ in_AOV_6 float 32 regular  }
	{ in_AOV_7 float 32 regular  }
	{ regions float 32 regular {array 4096 { 1 3 } 1 1 } {global 0}  }
	{ regions_1 float 32 regular {array 4096 { 1 3 } 1 1 } {global 0}  }
	{ regions_2 float 32 regular {array 4096 { 1 3 } 1 1 } {global 0}  }
	{ regions_3 float 32 regular {array 4096 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tmp_16", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_AOV_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "regions_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "regions_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "regions_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 2} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmp_16 sc_in sc_lv 12 signal 0 } 
	{ trunc_ln1 sc_in sc_lv 1 signal 1 } 
	{ in_AOV sc_in sc_lv 32 signal 2 } 
	{ in_AOV_1 sc_in sc_lv 32 signal 3 } 
	{ in_AOV_2 sc_in sc_lv 32 signal 4 } 
	{ in_AOV_3 sc_in sc_lv 32 signal 5 } 
	{ in_AOV_4 sc_in sc_lv 32 signal 6 } 
	{ in_AOV_5 sc_in sc_lv 32 signal 7 } 
	{ in_AOV_6 sc_in sc_lv 32 signal 8 } 
	{ in_AOV_7 sc_in sc_lv 32 signal 9 } 
	{ regions_address0 sc_out sc_lv 12 signal 10 } 
	{ regions_ce0 sc_out sc_logic 1 signal 10 } 
	{ regions_q0 sc_in sc_lv 32 signal 10 } 
	{ regions_1_address0 sc_out sc_lv 12 signal 11 } 
	{ regions_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ regions_1_q0 sc_in sc_lv 32 signal 11 } 
	{ regions_2_address0 sc_out sc_lv 12 signal 12 } 
	{ regions_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ regions_2_q0 sc_in sc_lv 32 signal 12 } 
	{ regions_3_address0 sc_out sc_lv 12 signal 13 } 
	{ regions_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ regions_3_q0 sc_in sc_lv 32 signal 13 } 
	{ ap_return sc_out sc_lv 2 signal -1 } 
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
 	{ "name": "tmp_16", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_16", "role": "default" }} , 
 	{ "name": "trunc_ln1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln1", "role": "default" }} , 
 	{ "name": "in_AOV", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV", "role": "default" }} , 
 	{ "name": "in_AOV_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_1", "role": "default" }} , 
 	{ "name": "in_AOV_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_2", "role": "default" }} , 
 	{ "name": "in_AOV_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_3", "role": "default" }} , 
 	{ "name": "in_AOV_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_4", "role": "default" }} , 
 	{ "name": "in_AOV_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_5", "role": "default" }} , 
 	{ "name": "in_AOV_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_6", "role": "default" }} , 
 	{ "name": "in_AOV_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_AOV_7", "role": "default" }} , 
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
 	{ "name": "regions_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_3", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "grp_fu_1356_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1356_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1356_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1356_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1356_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1356_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1356_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1356_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1356_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1356_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_864_32_1_1_U30", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U31", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U32", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "11", "Max" : "46"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "46"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp_16 { ap_none {  { tmp_16 in_data 0 12 } } }
	trunc_ln1 { ap_none {  { trunc_ln1 in_data 0 1 } } }
	in_AOV { ap_none {  { in_AOV in_data 0 32 } } }
	in_AOV_1 { ap_none {  { in_AOV_1 in_data 0 32 } } }
	in_AOV_2 { ap_none {  { in_AOV_2 in_data 0 32 } } }
	in_AOV_3 { ap_none {  { in_AOV_3 in_data 0 32 } } }
	in_AOV_4 { ap_none {  { in_AOV_4 in_data 0 32 } } }
	in_AOV_5 { ap_none {  { in_AOV_5 in_data 0 32 } } }
	in_AOV_6 { ap_none {  { in_AOV_6 in_data 0 32 } } }
	in_AOV_7 { ap_none {  { in_AOV_7 in_data 0 32 } } }
	regions { ap_stable {  { regions_address0 mem_address 1 12 }  { regions_ce0 mem_ce 1 1 }  { regions_q0 in_data 0 32 } } }
	regions_1 { ap_stable {  { regions_1_address0 mem_address 1 12 }  { regions_1_ce0 mem_ce 1 1 }  { regions_1_q0 in_data 0 32 } } }
	regions_2 { ap_stable {  { regions_2_address0 mem_address 1 12 }  { regions_2_ce0 mem_ce 1 1 }  { regions_2_q0 in_data 0 32 } } }
	regions_3 { ap_stable {  { regions_3_address0 mem_address 1 12 }  { regions_3_ce0 mem_ce 1 1 }  { regions_3_q0 in_data 0 32 } } }
}
