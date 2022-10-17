set moduleName insert_point2_Pipeline_insert_point_label6
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
set C_modelName {insert_point2_Pipeline_insert_point_label6}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln251_5 int 1 regular  }
	{ trunc_ln251_7 int 1 regular  }
	{ tmp_190 int 12 regular  }
	{ regions_min_0 float 32 regular {array 4096 { 2 1 } 1 1 }  }
	{ tmp_203 int 12 regular  }
	{ tmp_192 int 12 regular  }
	{ regions_min_1 float 32 regular {array 4096 { 2 1 } 1 1 }  }
	{ tmp_205 int 12 regular  }
	{ tmp_194 int 12 regular  }
	{ regions_max_0 float 32 regular {array 4096 { 2 1 } 1 1 }  }
	{ tmp_207 int 12 regular  }
	{ tmp_196 int 12 regular  }
	{ regions_max_1 float 32 regular {array 4096 { 2 1 } 1 1 }  }
	{ tmp_209 int 12 regular  }
	{ tmp_211 int 12 regular  }
	{ regions_center_0 float 32 regular {array 4096 { 0 3 } 0 1 }  }
	{ tmp_213 int 12 regular  }
	{ regions_center_1 float 32 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln251_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln251_7", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_190", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "regions_min_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp_203", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_192", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "regions_min_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp_205", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_194", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "regions_max_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp_207", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_196", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "regions_max_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "tmp_209", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_211", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "regions_center_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tmp_213", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "regions_center_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 72
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ trunc_ln251_5 sc_in sc_lv 1 signal 0 } 
	{ trunc_ln251_7 sc_in sc_lv 1 signal 1 } 
	{ tmp_190 sc_in sc_lv 12 signal 2 } 
	{ regions_min_0_address0 sc_out sc_lv 12 signal 3 } 
	{ regions_min_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ regions_min_0_we0 sc_out sc_logic 1 signal 3 } 
	{ regions_min_0_d0 sc_out sc_lv 32 signal 3 } 
	{ regions_min_0_q0 sc_in sc_lv 32 signal 3 } 
	{ regions_min_0_address1 sc_out sc_lv 12 signal 3 } 
	{ regions_min_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ regions_min_0_q1 sc_in sc_lv 32 signal 3 } 
	{ tmp_203 sc_in sc_lv 12 signal 4 } 
	{ tmp_192 sc_in sc_lv 12 signal 5 } 
	{ regions_min_1_address0 sc_out sc_lv 12 signal 6 } 
	{ regions_min_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ regions_min_1_we0 sc_out sc_logic 1 signal 6 } 
	{ regions_min_1_d0 sc_out sc_lv 32 signal 6 } 
	{ regions_min_1_q0 sc_in sc_lv 32 signal 6 } 
	{ regions_min_1_address1 sc_out sc_lv 12 signal 6 } 
	{ regions_min_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ regions_min_1_q1 sc_in sc_lv 32 signal 6 } 
	{ tmp_205 sc_in sc_lv 12 signal 7 } 
	{ tmp_194 sc_in sc_lv 12 signal 8 } 
	{ regions_max_0_address0 sc_out sc_lv 12 signal 9 } 
	{ regions_max_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ regions_max_0_we0 sc_out sc_logic 1 signal 9 } 
	{ regions_max_0_d0 sc_out sc_lv 32 signal 9 } 
	{ regions_max_0_q0 sc_in sc_lv 32 signal 9 } 
	{ regions_max_0_address1 sc_out sc_lv 12 signal 9 } 
	{ regions_max_0_ce1 sc_out sc_logic 1 signal 9 } 
	{ regions_max_0_q1 sc_in sc_lv 32 signal 9 } 
	{ tmp_207 sc_in sc_lv 12 signal 10 } 
	{ tmp_196 sc_in sc_lv 12 signal 11 } 
	{ regions_max_1_address0 sc_out sc_lv 12 signal 12 } 
	{ regions_max_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ regions_max_1_we0 sc_out sc_logic 1 signal 12 } 
	{ regions_max_1_d0 sc_out sc_lv 32 signal 12 } 
	{ regions_max_1_q0 sc_in sc_lv 32 signal 12 } 
	{ regions_max_1_address1 sc_out sc_lv 12 signal 12 } 
	{ regions_max_1_ce1 sc_out sc_logic 1 signal 12 } 
	{ regions_max_1_q1 sc_in sc_lv 32 signal 12 } 
	{ tmp_209 sc_in sc_lv 12 signal 13 } 
	{ tmp_211 sc_in sc_lv 12 signal 14 } 
	{ regions_center_0_address0 sc_out sc_lv 12 signal 15 } 
	{ regions_center_0_ce0 sc_out sc_logic 1 signal 15 } 
	{ regions_center_0_we0 sc_out sc_logic 1 signal 15 } 
	{ regions_center_0_d0 sc_out sc_lv 32 signal 15 } 
	{ tmp_213 sc_in sc_lv 12 signal 16 } 
	{ regions_center_1_address0 sc_out sc_lv 12 signal 17 } 
	{ regions_center_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ regions_center_1_we0 sc_out sc_logic 1 signal 17 } 
	{ regions_center_1_d0 sc_out sc_lv 32 signal 17 } 
	{ grp_fu_2725_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2725_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2725_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_2725_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2725_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2729_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2729_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2729_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2729_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2713_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2713_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2713_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_2713_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_2713_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "trunc_ln251_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln251_5", "role": "default" }} , 
 	{ "name": "trunc_ln251_7", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln251_7", "role": "default" }} , 
 	{ "name": "tmp_190", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_190", "role": "default" }} , 
 	{ "name": "regions_min_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_0", "role": "address0" }} , 
 	{ "name": "regions_min_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_0", "role": "ce0" }} , 
 	{ "name": "regions_min_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_0", "role": "we0" }} , 
 	{ "name": "regions_min_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "d0" }} , 
 	{ "name": "regions_min_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "q0" }} , 
 	{ "name": "regions_min_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_0", "role": "address1" }} , 
 	{ "name": "regions_min_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_0", "role": "ce1" }} , 
 	{ "name": "regions_min_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "q1" }} , 
 	{ "name": "tmp_203", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_203", "role": "default" }} , 
 	{ "name": "tmp_192", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_192", "role": "default" }} , 
 	{ "name": "regions_min_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_1", "role": "address0" }} , 
 	{ "name": "regions_min_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_1", "role": "ce0" }} , 
 	{ "name": "regions_min_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_1", "role": "we0" }} , 
 	{ "name": "regions_min_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_1", "role": "d0" }} , 
 	{ "name": "regions_min_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_1", "role": "q0" }} , 
 	{ "name": "regions_min_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_1", "role": "address1" }} , 
 	{ "name": "regions_min_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_1", "role": "ce1" }} , 
 	{ "name": "regions_min_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_1", "role": "q1" }} , 
 	{ "name": "tmp_205", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_205", "role": "default" }} , 
 	{ "name": "tmp_194", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_194", "role": "default" }} , 
 	{ "name": "regions_max_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_0", "role": "address0" }} , 
 	{ "name": "regions_max_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_0", "role": "ce0" }} , 
 	{ "name": "regions_max_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_0", "role": "we0" }} , 
 	{ "name": "regions_max_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_0", "role": "d0" }} , 
 	{ "name": "regions_max_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_0", "role": "q0" }} , 
 	{ "name": "regions_max_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_0", "role": "address1" }} , 
 	{ "name": "regions_max_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_0", "role": "ce1" }} , 
 	{ "name": "regions_max_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_0", "role": "q1" }} , 
 	{ "name": "tmp_207", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_207", "role": "default" }} , 
 	{ "name": "tmp_196", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_196", "role": "default" }} , 
 	{ "name": "regions_max_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_1", "role": "address0" }} , 
 	{ "name": "regions_max_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_1", "role": "ce0" }} , 
 	{ "name": "regions_max_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_1", "role": "we0" }} , 
 	{ "name": "regions_max_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_1", "role": "d0" }} , 
 	{ "name": "regions_max_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_1", "role": "q0" }} , 
 	{ "name": "regions_max_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_1", "role": "address1" }} , 
 	{ "name": "regions_max_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_1", "role": "ce1" }} , 
 	{ "name": "regions_max_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_1", "role": "q1" }} , 
 	{ "name": "tmp_209", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_209", "role": "default" }} , 
 	{ "name": "tmp_211", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_211", "role": "default" }} , 
 	{ "name": "regions_center_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_center_0", "role": "address0" }} , 
 	{ "name": "regions_center_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_0", "role": "ce0" }} , 
 	{ "name": "regions_center_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_0", "role": "we0" }} , 
 	{ "name": "regions_center_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_0", "role": "d0" }} , 
 	{ "name": "tmp_213", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "tmp_213", "role": "default" }} , 
 	{ "name": "regions_center_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_center_1", "role": "address0" }} , 
 	{ "name": "regions_center_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_1", "role": "ce0" }} , 
 	{ "name": "regions_center_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_1", "role": "we0" }} , 
 	{ "name": "regions_center_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_1", "role": "d0" }} , 
 	{ "name": "grp_fu_2725_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2725_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2725_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2725_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2725_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2725_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2725_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2725_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2725_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2725_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2729_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2729_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2729_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2729_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2729_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2729_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2729_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2729_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2713_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2713_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2713_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2713_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2713_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_2713_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_2713_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2713_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2713_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2713_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "insert_point2_Pipeline_insert_point_label6",
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
			{"Name" : "trunc_ln251_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln251_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_190", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_203", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_192", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_205", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_194", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_207", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_196", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_209", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_211", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_213", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "insert_point_label6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U218", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U219", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U220", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U221", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	insert_point2_Pipeline_insert_point_label6 {
		trunc_ln251_5 {Type I LastRead 0 FirstWrite -1}
		trunc_ln251_7 {Type I LastRead 0 FirstWrite -1}
		tmp_190 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type IO LastRead 1 FirstWrite 3}
		tmp_203 {Type I LastRead 0 FirstWrite -1}
		tmp_192 {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type IO LastRead 1 FirstWrite 3}
		tmp_205 {Type I LastRead 0 FirstWrite -1}
		tmp_194 {Type I LastRead 0 FirstWrite -1}
		regions_max_0 {Type IO LastRead 1 FirstWrite 3}
		tmp_207 {Type I LastRead 0 FirstWrite -1}
		tmp_196 {Type I LastRead 0 FirstWrite -1}
		regions_max_1 {Type IO LastRead 1 FirstWrite 3}
		tmp_209 {Type I LastRead 0 FirstWrite -1}
		tmp_211 {Type I LastRead 0 FirstWrite -1}
		regions_center_0 {Type O LastRead -1 FirstWrite 10}
		tmp_213 {Type I LastRead 0 FirstWrite -1}
		regions_center_1 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26", "Max" : "26"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln251_5 { ap_none {  { trunc_ln251_5 in_data 0 1 } } }
	trunc_ln251_7 { ap_none {  { trunc_ln251_7 in_data 0 1 } } }
	tmp_190 { ap_none {  { tmp_190 in_data 0 12 } } }
	regions_min_0 { ap_memory {  { regions_min_0_address0 mem_address 1 12 }  { regions_min_0_ce0 mem_ce 1 1 }  { regions_min_0_we0 mem_we 1 1 }  { regions_min_0_d0 mem_din 1 32 }  { regions_min_0_q0 in_data 0 32 }  { regions_min_0_address1 MemPortADDR2 1 12 }  { regions_min_0_ce1 MemPortCE2 1 1 }  { regions_min_0_q1 in_data 0 32 } } }
	tmp_203 { ap_none {  { tmp_203 in_data 0 12 } } }
	tmp_192 { ap_none {  { tmp_192 in_data 0 12 } } }
	regions_min_1 { ap_memory {  { regions_min_1_address0 mem_address 1 12 }  { regions_min_1_ce0 mem_ce 1 1 }  { regions_min_1_we0 mem_we 1 1 }  { regions_min_1_d0 mem_din 1 32 }  { regions_min_1_q0 in_data 0 32 }  { regions_min_1_address1 MemPortADDR2 1 12 }  { regions_min_1_ce1 MemPortCE2 1 1 }  { regions_min_1_q1 in_data 0 32 } } }
	tmp_205 { ap_none {  { tmp_205 in_data 0 12 } } }
	tmp_194 { ap_none {  { tmp_194 in_data 0 12 } } }
	regions_max_0 { ap_memory {  { regions_max_0_address0 mem_address 1 12 }  { regions_max_0_ce0 mem_ce 1 1 }  { regions_max_0_we0 mem_we 1 1 }  { regions_max_0_d0 mem_din 1 32 }  { regions_max_0_q0 in_data 0 32 }  { regions_max_0_address1 MemPortADDR2 1 12 }  { regions_max_0_ce1 MemPortCE2 1 1 }  { regions_max_0_q1 in_data 0 32 } } }
	tmp_207 { ap_none {  { tmp_207 in_data 0 12 } } }
	tmp_196 { ap_none {  { tmp_196 in_data 0 12 } } }
	regions_max_1 { ap_memory {  { regions_max_1_address0 mem_address 1 12 }  { regions_max_1_ce0 mem_ce 1 1 }  { regions_max_1_we0 mem_we 1 1 }  { regions_max_1_d0 mem_din 1 32 }  { regions_max_1_q0 in_data 0 32 }  { regions_max_1_address1 MemPortADDR2 1 12 }  { regions_max_1_ce1 MemPortCE2 1 1 }  { regions_max_1_q1 in_data 0 32 } } }
	tmp_209 { ap_none {  { tmp_209 in_data 0 12 } } }
	tmp_211 { ap_none {  { tmp_211 in_data 0 12 } } }
	regions_center_0 { ap_memory {  { regions_center_0_address0 mem_address 1 12 }  { regions_center_0_ce0 mem_ce 1 1 }  { regions_center_0_we0 mem_we 1 1 }  { regions_center_0_d0 mem_din 1 32 } } }
	tmp_213 { ap_none {  { tmp_213 in_data 0 12 } } }
	regions_center_1 { ap_memory {  { regions_center_1_address0 mem_address 1 12 }  { regions_center_1_ce0 mem_ce 1 1 }  { regions_center_1_we0 mem_we 1 1 }  { regions_center_1_d0 mem_din 1 32 } } }
}
