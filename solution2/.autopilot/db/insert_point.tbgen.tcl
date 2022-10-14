set moduleName insert_point
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
set C_modelName {insert_point}
set C_modelType { void 0 }
set C_modelArgList {
	{ regions_min_0 float 32 regular {array 4096 { 2 2 } 1 1 }  }
	{ regions_min_0_offset int 6 regular  }
	{ regions_min_1 float 32 regular {array 4096 { 2 2 } 1 1 }  }
	{ regions_max_0 float 32 regular {array 4096 { 2 2 } 1 1 }  }
	{ regions_max_1 float 32 regular {array 4096 { 2 2 } 1 1 }  }
	{ regions_center_0 float 32 regular {array 4096 { 2 2 } 1 1 }  }
	{ regions_center_1 float 32 regular {array 4096 { 2 2 } 1 1 }  }
	{ n_regions int 8 regular {array 64 { 2 3 } 1 1 }  }
	{ d_read float 32 regular  }
	{ d_read_39 float 32 regular  }
	{ d_read_40 float 32 regular  }
	{ d_read_41 float 32 regular  }
	{ d_read_42 float 32 regular  }
	{ d_read_43 float 32 regular  }
	{ d_read_44 float 32 regular  }
	{ d_read_45 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "regions_min_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "regions_min_0_offset", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "regions_min_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "regions_max_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "regions_max_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "regions_center_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "regions_center_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "n_regions", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "d_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_39", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_40", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_41", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_42", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_43", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_44", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_45", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 95
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ regions_min_0_address0 sc_out sc_lv 12 signal 0 } 
	{ regions_min_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ regions_min_0_we0 sc_out sc_logic 1 signal 0 } 
	{ regions_min_0_d0 sc_out sc_lv 32 signal 0 } 
	{ regions_min_0_q0 sc_in sc_lv 32 signal 0 } 
	{ regions_min_0_address1 sc_out sc_lv 12 signal 0 } 
	{ regions_min_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ regions_min_0_we1 sc_out sc_logic 1 signal 0 } 
	{ regions_min_0_d1 sc_out sc_lv 32 signal 0 } 
	{ regions_min_0_q1 sc_in sc_lv 32 signal 0 } 
	{ regions_min_0_offset sc_in sc_lv 6 signal 1 } 
	{ regions_min_1_address0 sc_out sc_lv 12 signal 2 } 
	{ regions_min_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ regions_min_1_we0 sc_out sc_logic 1 signal 2 } 
	{ regions_min_1_d0 sc_out sc_lv 32 signal 2 } 
	{ regions_min_1_q0 sc_in sc_lv 32 signal 2 } 
	{ regions_min_1_address1 sc_out sc_lv 12 signal 2 } 
	{ regions_min_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ regions_min_1_we1 sc_out sc_logic 1 signal 2 } 
	{ regions_min_1_d1 sc_out sc_lv 32 signal 2 } 
	{ regions_min_1_q1 sc_in sc_lv 32 signal 2 } 
	{ regions_max_0_address0 sc_out sc_lv 12 signal 3 } 
	{ regions_max_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ regions_max_0_we0 sc_out sc_logic 1 signal 3 } 
	{ regions_max_0_d0 sc_out sc_lv 32 signal 3 } 
	{ regions_max_0_q0 sc_in sc_lv 32 signal 3 } 
	{ regions_max_0_address1 sc_out sc_lv 12 signal 3 } 
	{ regions_max_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ regions_max_0_we1 sc_out sc_logic 1 signal 3 } 
	{ regions_max_0_d1 sc_out sc_lv 32 signal 3 } 
	{ regions_max_0_q1 sc_in sc_lv 32 signal 3 } 
	{ regions_max_1_address0 sc_out sc_lv 12 signal 4 } 
	{ regions_max_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ regions_max_1_we0 sc_out sc_logic 1 signal 4 } 
	{ regions_max_1_d0 sc_out sc_lv 32 signal 4 } 
	{ regions_max_1_q0 sc_in sc_lv 32 signal 4 } 
	{ regions_max_1_address1 sc_out sc_lv 12 signal 4 } 
	{ regions_max_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ regions_max_1_we1 sc_out sc_logic 1 signal 4 } 
	{ regions_max_1_d1 sc_out sc_lv 32 signal 4 } 
	{ regions_max_1_q1 sc_in sc_lv 32 signal 4 } 
	{ regions_center_0_address0 sc_out sc_lv 12 signal 5 } 
	{ regions_center_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ regions_center_0_we0 sc_out sc_logic 1 signal 5 } 
	{ regions_center_0_d0 sc_out sc_lv 32 signal 5 } 
	{ regions_center_0_q0 sc_in sc_lv 32 signal 5 } 
	{ regions_center_0_address1 sc_out sc_lv 12 signal 5 } 
	{ regions_center_0_ce1 sc_out sc_logic 1 signal 5 } 
	{ regions_center_0_we1 sc_out sc_logic 1 signal 5 } 
	{ regions_center_0_d1 sc_out sc_lv 32 signal 5 } 
	{ regions_center_0_q1 sc_in sc_lv 32 signal 5 } 
	{ regions_center_1_address0 sc_out sc_lv 12 signal 6 } 
	{ regions_center_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ regions_center_1_we0 sc_out sc_logic 1 signal 6 } 
	{ regions_center_1_d0 sc_out sc_lv 32 signal 6 } 
	{ regions_center_1_q0 sc_in sc_lv 32 signal 6 } 
	{ regions_center_1_address1 sc_out sc_lv 12 signal 6 } 
	{ regions_center_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ regions_center_1_we1 sc_out sc_logic 1 signal 6 } 
	{ regions_center_1_d1 sc_out sc_lv 32 signal 6 } 
	{ regions_center_1_q1 sc_in sc_lv 32 signal 6 } 
	{ n_regions_address0 sc_out sc_lv 6 signal 7 } 
	{ n_regions_ce0 sc_out sc_logic 1 signal 7 } 
	{ n_regions_we0 sc_out sc_logic 1 signal 7 } 
	{ n_regions_d0 sc_out sc_lv 8 signal 7 } 
	{ n_regions_q0 sc_in sc_lv 8 signal 7 } 
	{ d_read sc_in sc_lv 32 signal 8 } 
	{ d_read_39 sc_in sc_lv 32 signal 9 } 
	{ d_read_40 sc_in sc_lv 32 signal 10 } 
	{ d_read_41 sc_in sc_lv 32 signal 11 } 
	{ d_read_42 sc_in sc_lv 32 signal 12 } 
	{ d_read_43 sc_in sc_lv 32 signal 13 } 
	{ d_read_44 sc_in sc_lv 32 signal 14 } 
	{ d_read_45 sc_in sc_lv 32 signal 15 } 
	{ grp_fu_1089_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1089_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1089_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1089_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1089_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1093_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1093_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1093_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1093_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1093_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1097_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1097_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1097_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1097_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1097_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "regions_min_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_0", "role": "address0" }} , 
 	{ "name": "regions_min_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_0", "role": "ce0" }} , 
 	{ "name": "regions_min_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_0", "role": "we0" }} , 
 	{ "name": "regions_min_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "d0" }} , 
 	{ "name": "regions_min_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "q0" }} , 
 	{ "name": "regions_min_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_0", "role": "address1" }} , 
 	{ "name": "regions_min_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_0", "role": "ce1" }} , 
 	{ "name": "regions_min_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_0", "role": "we1" }} , 
 	{ "name": "regions_min_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "d1" }} , 
 	{ "name": "regions_min_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "q1" }} , 
 	{ "name": "regions_min_0_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "regions_min_0_offset", "role": "default" }} , 
 	{ "name": "regions_min_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_1", "role": "address0" }} , 
 	{ "name": "regions_min_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_1", "role": "ce0" }} , 
 	{ "name": "regions_min_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_1", "role": "we0" }} , 
 	{ "name": "regions_min_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_1", "role": "d0" }} , 
 	{ "name": "regions_min_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_1", "role": "q0" }} , 
 	{ "name": "regions_min_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_1", "role": "address1" }} , 
 	{ "name": "regions_min_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_1", "role": "ce1" }} , 
 	{ "name": "regions_min_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_1", "role": "we1" }} , 
 	{ "name": "regions_min_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_1", "role": "d1" }} , 
 	{ "name": "regions_min_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_1", "role": "q1" }} , 
 	{ "name": "regions_max_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_0", "role": "address0" }} , 
 	{ "name": "regions_max_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_0", "role": "ce0" }} , 
 	{ "name": "regions_max_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_0", "role": "we0" }} , 
 	{ "name": "regions_max_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_0", "role": "d0" }} , 
 	{ "name": "regions_max_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_0", "role": "q0" }} , 
 	{ "name": "regions_max_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_0", "role": "address1" }} , 
 	{ "name": "regions_max_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_0", "role": "ce1" }} , 
 	{ "name": "regions_max_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_0", "role": "we1" }} , 
 	{ "name": "regions_max_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_0", "role": "d1" }} , 
 	{ "name": "regions_max_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_0", "role": "q1" }} , 
 	{ "name": "regions_max_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_1", "role": "address0" }} , 
 	{ "name": "regions_max_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_1", "role": "ce0" }} , 
 	{ "name": "regions_max_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_1", "role": "we0" }} , 
 	{ "name": "regions_max_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_1", "role": "d0" }} , 
 	{ "name": "regions_max_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_1", "role": "q0" }} , 
 	{ "name": "regions_max_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_1", "role": "address1" }} , 
 	{ "name": "regions_max_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_1", "role": "ce1" }} , 
 	{ "name": "regions_max_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_1", "role": "we1" }} , 
 	{ "name": "regions_max_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_1", "role": "d1" }} , 
 	{ "name": "regions_max_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_1", "role": "q1" }} , 
 	{ "name": "regions_center_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_center_0", "role": "address0" }} , 
 	{ "name": "regions_center_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_0", "role": "ce0" }} , 
 	{ "name": "regions_center_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_0", "role": "we0" }} , 
 	{ "name": "regions_center_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_0", "role": "d0" }} , 
 	{ "name": "regions_center_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_0", "role": "q0" }} , 
 	{ "name": "regions_center_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_center_0", "role": "address1" }} , 
 	{ "name": "regions_center_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_0", "role": "ce1" }} , 
 	{ "name": "regions_center_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_0", "role": "we1" }} , 
 	{ "name": "regions_center_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_0", "role": "d1" }} , 
 	{ "name": "regions_center_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_0", "role": "q1" }} , 
 	{ "name": "regions_center_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_center_1", "role": "address0" }} , 
 	{ "name": "regions_center_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_1", "role": "ce0" }} , 
 	{ "name": "regions_center_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_1", "role": "we0" }} , 
 	{ "name": "regions_center_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_1", "role": "d0" }} , 
 	{ "name": "regions_center_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_1", "role": "q0" }} , 
 	{ "name": "regions_center_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_center_1", "role": "address1" }} , 
 	{ "name": "regions_center_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_1", "role": "ce1" }} , 
 	{ "name": "regions_center_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_1", "role": "we1" }} , 
 	{ "name": "regions_center_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_1", "role": "d1" }} , 
 	{ "name": "regions_center_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_1", "role": "q1" }} , 
 	{ "name": "n_regions_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "n_regions", "role": "address0" }} , 
 	{ "name": "n_regions_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_regions", "role": "ce0" }} , 
 	{ "name": "n_regions_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_regions", "role": "we0" }} , 
 	{ "name": "n_regions_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions", "role": "d0" }} , 
 	{ "name": "n_regions_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions", "role": "q0" }} , 
 	{ "name": "d_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read", "role": "default" }} , 
 	{ "name": "d_read_39", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_39", "role": "default" }} , 
 	{ "name": "d_read_40", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_40", "role": "default" }} , 
 	{ "name": "d_read_41", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_41", "role": "default" }} , 
 	{ "name": "d_read_42", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_42", "role": "default" }} , 
 	{ "name": "d_read_43", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_43", "role": "default" }} , 
 	{ "name": "d_read_44", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_44", "role": "default" }} , 
 	{ "name": "d_read_45", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_45", "role": "default" }} , 
 	{ "name": "grp_fu_1089_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1089_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1089_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1089_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1089_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1089_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1089_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1089_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1089_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1089_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1093_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1093_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1093_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1093_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1093_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1093_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1093_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1093_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1093_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1093_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1097_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1097_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1097_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1097_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1097_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1097_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1097_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1097_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1097_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1097_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "23", "29", "30"],
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
					{"ID" : "4", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_min_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "7", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_min_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_min_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_min_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_min_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "7", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_min_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_min_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_max_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "7", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_max_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_max_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_max_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "7", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_max_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_max_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_center_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "7", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_center_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_center_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label4_fu_770", "Port" : "regions_center_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "7", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Port" : "regions_center_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point_Pipeline_insert_point_label6_fu_815", "Port" : "regions_center_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "n_regions", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_45", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_is_valid_label2_fu_750", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_is_valid_label2_fu_750.mux_84_32_1_1_U8", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_is_valid_label2_fu_750.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_insert_point_label4_fu_770", "Parent" : "0", "Child" : ["5", "6"],
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
			{"Name" : "tmp_187", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions_load_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "insert_point_label4", "PipelineType" : "NotSupport"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_insert_point_label4_fu_770.mux_84_32_1_1_U18", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_insert_point_label4_fu_770.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "insert_point_Pipeline_VITIS_LOOP_279_1",
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
			{"Name" : "zext_ln260", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "merge_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "merge_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_279_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fsub_32ns_32ns_32_4_full_dsp_1_U36", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fsub_32ns_32ns_32_4_full_dsp_1_U37", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fsub_32ns_32ns_32_4_full_dsp_1_U38", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fsub_32ns_32ns_32_4_full_dsp_1_U39", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.faddfsub_32ns_32ns_32_4_full_dsp_1_U40", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.faddfsub_32ns_32ns_32_4_full_dsp_1_U41", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fadd_32ns_32ns_32_4_full_dsp_1_U42", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.fmul_32ns_32ns_32_2_max_dsp_1_U44", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U48", "Parent" : "7"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U49", "Parent" : "7"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U50", "Parent" : "7"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U51", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U52", "Parent" : "7"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.mux_21_32_1_1_U53", "Parent" : "7"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_279_1_fu_796.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_insert_point_label6_fu_815", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28"],
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
			{"Name" : "trunc_ln268_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln268_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_193", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tmp_196", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "insert_point_label6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_insert_point_label6_fu_815.mux_21_32_1_1_U71", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_insert_point_label6_fu_815.mux_21_32_1_1_U72", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_insert_point_label6_fu_815.mux_21_32_1_1_U73", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_insert_point_label6_fu_815.mux_21_32_1_1_U74", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_insert_point_label6_fu_815.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_4_full_dsp_1_U88", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U89", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		d_read_39 {Type I LastRead 0 FirstWrite -1}
		d_read_40 {Type I LastRead 0 FirstWrite -1}
		d_read_41 {Type I LastRead 0 FirstWrite -1}
		d_read_42 {Type I LastRead 0 FirstWrite -1}
		d_read_43 {Type I LastRead 0 FirstWrite -1}
		d_read_44 {Type I LastRead 0 FirstWrite -1}
		d_read_45 {Type I LastRead 0 FirstWrite -1}}
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
		tmp_187 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type O LastRead -1 FirstWrite 0}
		regions_min_1 {Type O LastRead -1 FirstWrite 0}
		regions_max_0 {Type O LastRead -1 FirstWrite 0}
		regions_max_1 {Type O LastRead -1 FirstWrite 0}
		regions_center_0 {Type O LastRead -1 FirstWrite 0}
		regions_center_1 {Type O LastRead -1 FirstWrite 0}
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_8 {Type I LastRead 0 FirstWrite -1}
		d_read_9 {Type I LastRead 0 FirstWrite -1}
		d_read_10 {Type I LastRead 0 FirstWrite -1}
		d_read_11 {Type I LastRead 0 FirstWrite -1}
		d_read_12 {Type I LastRead 0 FirstWrite -1}
		d_read_13 {Type I LastRead 0 FirstWrite -1}
		d_read_14 {Type I LastRead 0 FirstWrite -1}
		n_regions_load_cast {Type I LastRead 0 FirstWrite -1}}
	insert_point_Pipeline_VITIS_LOOP_279_1 {
		zext_ln260 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type I LastRead 9 FirstWrite -1}
		regions_min_1 {Type I LastRead 9 FirstWrite -1}
		regions_max_0 {Type I LastRead 9 FirstWrite -1}
		regions_max_1 {Type I LastRead 9 FirstWrite -1}
		regions_center_0 {Type I LastRead 9 FirstWrite -1}
		regions_center_1 {Type I LastRead 9 FirstWrite -1}
		merge_2_out {Type O LastRead -1 FirstWrite 45}
		merge_1_out {Type O LastRead -1 FirstWrite 45}}
	insert_point_Pipeline_insert_point_label6 {
		trunc_ln268_5 {Type I LastRead 0 FirstWrite -1}
		trunc_ln268_7 {Type I LastRead 0 FirstWrite -1}
		tmp_193 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type IO LastRead 1 FirstWrite 3}
		tmp_196 {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type IO LastRead 1 FirstWrite 3}
		regions_max_0 {Type IO LastRead 1 FirstWrite 3}
		regions_max_1 {Type IO LastRead 1 FirstWrite 3}
		regions_center_0 {Type O LastRead -1 FirstWrite 10}
		regions_center_1 {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "1204"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "1204"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	regions_min_0 { ap_memory {  { regions_min_0_address0 mem_address 1 12 }  { regions_min_0_ce0 mem_ce 1 1 }  { regions_min_0_we0 mem_we 1 1 }  { regions_min_0_d0 mem_din 1 32 }  { regions_min_0_q0 mem_dout 0 32 }  { regions_min_0_address1 MemPortADDR2 1 12 }  { regions_min_0_ce1 MemPortCE2 1 1 }  { regions_min_0_we1 MemPortWE2 1 1 }  { regions_min_0_d1 MemPortDIN2 1 32 }  { regions_min_0_q1 MemPortDOUT2 0 32 } } }
	regions_min_0_offset { ap_none {  { regions_min_0_offset in_data 0 6 } } }
	regions_min_1 { ap_memory {  { regions_min_1_address0 mem_address 1 12 }  { regions_min_1_ce0 mem_ce 1 1 }  { regions_min_1_we0 mem_we 1 1 }  { regions_min_1_d0 mem_din 1 32 }  { regions_min_1_q0 mem_dout 0 32 }  { regions_min_1_address1 MemPortADDR2 1 12 }  { regions_min_1_ce1 MemPortCE2 1 1 }  { regions_min_1_we1 MemPortWE2 1 1 }  { regions_min_1_d1 MemPortDIN2 1 32 }  { regions_min_1_q1 MemPortDOUT2 0 32 } } }
	regions_max_0 { ap_memory {  { regions_max_0_address0 mem_address 1 12 }  { regions_max_0_ce0 mem_ce 1 1 }  { regions_max_0_we0 mem_we 1 1 }  { regions_max_0_d0 mem_din 1 32 }  { regions_max_0_q0 mem_dout 0 32 }  { regions_max_0_address1 MemPortADDR2 1 12 }  { regions_max_0_ce1 MemPortCE2 1 1 }  { regions_max_0_we1 MemPortWE2 1 1 }  { regions_max_0_d1 MemPortDIN2 1 32 }  { regions_max_0_q1 MemPortDOUT2 0 32 } } }
	regions_max_1 { ap_memory {  { regions_max_1_address0 mem_address 1 12 }  { regions_max_1_ce0 mem_ce 1 1 }  { regions_max_1_we0 mem_we 1 1 }  { regions_max_1_d0 mem_din 1 32 }  { regions_max_1_q0 mem_dout 0 32 }  { regions_max_1_address1 MemPortADDR2 1 12 }  { regions_max_1_ce1 MemPortCE2 1 1 }  { regions_max_1_we1 MemPortWE2 1 1 }  { regions_max_1_d1 MemPortDIN2 1 32 }  { regions_max_1_q1 MemPortDOUT2 0 32 } } }
	regions_center_0 { ap_memory {  { regions_center_0_address0 mem_address 1 12 }  { regions_center_0_ce0 mem_ce 1 1 }  { regions_center_0_we0 mem_we 1 1 }  { regions_center_0_d0 mem_din 1 32 }  { regions_center_0_q0 mem_dout 0 32 }  { regions_center_0_address1 MemPortADDR2 1 12 }  { regions_center_0_ce1 MemPortCE2 1 1 }  { regions_center_0_we1 MemPortWE2 1 1 }  { regions_center_0_d1 MemPortDIN2 1 32 }  { regions_center_0_q1 MemPortDOUT2 0 32 } } }
	regions_center_1 { ap_memory {  { regions_center_1_address0 mem_address 1 12 }  { regions_center_1_ce0 mem_ce 1 1 }  { regions_center_1_we0 mem_we 1 1 }  { regions_center_1_d0 mem_din 1 32 }  { regions_center_1_q0 mem_dout 0 32 }  { regions_center_1_address1 MemPortADDR2 1 12 }  { regions_center_1_ce1 MemPortCE2 1 1 }  { regions_center_1_we1 MemPortWE2 1 1 }  { regions_center_1_d1 MemPortDIN2 1 32 }  { regions_center_1_q1 MemPortDOUT2 0 32 } } }
	n_regions { ap_memory {  { n_regions_address0 mem_address 1 6 }  { n_regions_ce0 mem_ce 1 1 }  { n_regions_we0 mem_we 1 1 }  { n_regions_d0 mem_din 1 8 }  { n_regions_q0 in_data 0 8 } } }
	d_read { ap_none {  { d_read in_data 0 32 } } }
	d_read_39 { ap_none {  { d_read_39 in_data 0 32 } } }
	d_read_40 { ap_none {  { d_read_40 in_data 0 32 } } }
	d_read_41 { ap_none {  { d_read_41 in_data 0 32 } } }
	d_read_42 { ap_none {  { d_read_42 in_data 0 32 } } }
	d_read_43 { ap_none {  { d_read_43 in_data 0 32 } } }
	d_read_44 { ap_none {  { d_read_44 in_data 0 32 } } }
	d_read_45 { ap_none {  { d_read_45 in_data 0 32 } } }
}
