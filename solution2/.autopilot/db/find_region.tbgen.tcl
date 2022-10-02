set moduleName find_region
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
set C_modelName {find_region}
set C_modelType { int 32 }
set C_modelArgList {
	{ regions_min_0 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ regions_min_0_offset int 6 regular  }
	{ regions_min_1 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ regions_max_0 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ regions_max_1 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ regions_center_0 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ regions_center_1 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ n_regions int 8 regular  }
	{ d_read float 32 regular  }
	{ d_read_60 float 32 regular  }
	{ d_read_61 float 32 regular  }
	{ d_read_62 float 32 regular  }
	{ d_read_63 float 32 regular  }
	{ d_read_64 float 32 regular  }
	{ d_read_65 float 32 regular  }
	{ d_read_66 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "regions_min_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_min_0_offset", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "regions_min_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_max_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_max_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_center_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_center_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "n_regions", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "d_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_60", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_61", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_62", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_63", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_64", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_65", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_66", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 96
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ regions_min_0_address0 sc_out sc_lv 12 signal 0 } 
	{ regions_min_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ regions_min_0_q0 sc_in sc_lv 32 signal 0 } 
	{ regions_min_0_address1 sc_out sc_lv 12 signal 0 } 
	{ regions_min_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ regions_min_0_q1 sc_in sc_lv 32 signal 0 } 
	{ regions_min_0_offset sc_in sc_lv 6 signal 1 } 
	{ regions_min_1_address0 sc_out sc_lv 12 signal 2 } 
	{ regions_min_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ regions_min_1_q0 sc_in sc_lv 32 signal 2 } 
	{ regions_min_1_address1 sc_out sc_lv 12 signal 2 } 
	{ regions_min_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ regions_min_1_q1 sc_in sc_lv 32 signal 2 } 
	{ regions_max_0_address0 sc_out sc_lv 12 signal 3 } 
	{ regions_max_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ regions_max_0_q0 sc_in sc_lv 32 signal 3 } 
	{ regions_max_0_address1 sc_out sc_lv 12 signal 3 } 
	{ regions_max_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ regions_max_0_q1 sc_in sc_lv 32 signal 3 } 
	{ regions_max_1_address0 sc_out sc_lv 12 signal 4 } 
	{ regions_max_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ regions_max_1_q0 sc_in sc_lv 32 signal 4 } 
	{ regions_max_1_address1 sc_out sc_lv 12 signal 4 } 
	{ regions_max_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ regions_max_1_q1 sc_in sc_lv 32 signal 4 } 
	{ regions_center_0_address0 sc_out sc_lv 12 signal 5 } 
	{ regions_center_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ regions_center_0_q0 sc_in sc_lv 32 signal 5 } 
	{ regions_center_0_address1 sc_out sc_lv 12 signal 5 } 
	{ regions_center_0_ce1 sc_out sc_logic 1 signal 5 } 
	{ regions_center_0_q1 sc_in sc_lv 32 signal 5 } 
	{ regions_center_1_address0 sc_out sc_lv 12 signal 6 } 
	{ regions_center_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ regions_center_1_q0 sc_in sc_lv 32 signal 6 } 
	{ regions_center_1_address1 sc_out sc_lv 12 signal 6 } 
	{ regions_center_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ regions_center_1_q1 sc_in sc_lv 32 signal 6 } 
	{ n_regions sc_in sc_lv 8 signal 7 } 
	{ d_read sc_in sc_lv 32 signal 8 } 
	{ d_read_60 sc_in sc_lv 32 signal 9 } 
	{ d_read_61 sc_in sc_lv 32 signal 10 } 
	{ d_read_62 sc_in sc_lv 32 signal 11 } 
	{ d_read_63 sc_in sc_lv 32 signal 12 } 
	{ d_read_64 sc_in sc_lv 32 signal 13 } 
	{ d_read_65 sc_in sc_lv 32 signal 14 } 
	{ d_read_66 sc_in sc_lv 32 signal 15 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
	{ grp_fu_687_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_687_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_687_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_687_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_687_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_691_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_691_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_691_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_691_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_691_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_695_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_695_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_695_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_695_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_695_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_699_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_699_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_699_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_699_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_699_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_703_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_703_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_703_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_703_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_707_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_707_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_707_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_707_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_675_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_675_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_675_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_675_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_675_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_679_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_679_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_679_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_679_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_679_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_683_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_683_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_683_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_683_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_683_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "regions_min_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "q0" }} , 
 	{ "name": "regions_min_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_0", "role": "address1" }} , 
 	{ "name": "regions_min_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_0", "role": "ce1" }} , 
 	{ "name": "regions_min_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "q1" }} , 
 	{ "name": "regions_min_0_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "regions_min_0_offset", "role": "default" }} , 
 	{ "name": "regions_min_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_1", "role": "address0" }} , 
 	{ "name": "regions_min_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_1", "role": "ce0" }} , 
 	{ "name": "regions_min_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_1", "role": "q0" }} , 
 	{ "name": "regions_min_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_1", "role": "address1" }} , 
 	{ "name": "regions_min_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_1", "role": "ce1" }} , 
 	{ "name": "regions_min_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_1", "role": "q1" }} , 
 	{ "name": "regions_max_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_0", "role": "address0" }} , 
 	{ "name": "regions_max_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_0", "role": "ce0" }} , 
 	{ "name": "regions_max_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_0", "role": "q0" }} , 
 	{ "name": "regions_max_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_0", "role": "address1" }} , 
 	{ "name": "regions_max_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_0", "role": "ce1" }} , 
 	{ "name": "regions_max_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_0", "role": "q1" }} , 
 	{ "name": "regions_max_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_1", "role": "address0" }} , 
 	{ "name": "regions_max_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_1", "role": "ce0" }} , 
 	{ "name": "regions_max_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_1", "role": "q0" }} , 
 	{ "name": "regions_max_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_max_1", "role": "address1" }} , 
 	{ "name": "regions_max_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_max_1", "role": "ce1" }} , 
 	{ "name": "regions_max_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_max_1", "role": "q1" }} , 
 	{ "name": "regions_center_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_center_0", "role": "address0" }} , 
 	{ "name": "regions_center_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_0", "role": "ce0" }} , 
 	{ "name": "regions_center_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_0", "role": "q0" }} , 
 	{ "name": "regions_center_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_center_0", "role": "address1" }} , 
 	{ "name": "regions_center_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_0", "role": "ce1" }} , 
 	{ "name": "regions_center_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_0", "role": "q1" }} , 
 	{ "name": "regions_center_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_center_1", "role": "address0" }} , 
 	{ "name": "regions_center_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_1", "role": "ce0" }} , 
 	{ "name": "regions_center_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_1", "role": "q0" }} , 
 	{ "name": "regions_center_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_center_1", "role": "address1" }} , 
 	{ "name": "regions_center_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_center_1", "role": "ce1" }} , 
 	{ "name": "regions_center_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_center_1", "role": "q1" }} , 
 	{ "name": "n_regions", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions", "role": "default" }} , 
 	{ "name": "d_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read", "role": "default" }} , 
 	{ "name": "d_read_60", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_60", "role": "default" }} , 
 	{ "name": "d_read_61", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_61", "role": "default" }} , 
 	{ "name": "d_read_62", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_62", "role": "default" }} , 
 	{ "name": "d_read_63", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_63", "role": "default" }} , 
 	{ "name": "d_read_64", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_64", "role": "default" }} , 
 	{ "name": "d_read_65", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_65", "role": "default" }} , 
 	{ "name": "d_read_66", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_66", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "grp_fu_687_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_687_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_687_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_687_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_687_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_687_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_687_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_687_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_687_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_687_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_691_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_691_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_691_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_691_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_691_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_691_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_691_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_691_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_691_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_691_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_695_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_695_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_695_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_695_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_695_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_695_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_695_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_695_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_695_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_695_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_699_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_699_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_699_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_699_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_699_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_699_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_699_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_699_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_699_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_699_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_703_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_703_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_703_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_703_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_703_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_703_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_703_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_703_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_707_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_707_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_707_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_707_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_707_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_707_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_707_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_707_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_675_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_675_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_675_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_675_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_675_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_675_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_675_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_675_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_675_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_675_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_679_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_679_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_679_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_679_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_679_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_679_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_679_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_679_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_679_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_679_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_683_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_683_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_683_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_683_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_683_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_683_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_683_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_683_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_683_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_683_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_10_no_dsp_1_U115", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U119", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U120", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U121", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U122", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U123", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U124", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U125", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U126", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		d_read_66 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "116"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "116"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	regions_min_0 { ap_memory {  { regions_min_0_address0 mem_address 1 12 }  { regions_min_0_ce0 mem_ce 1 1 }  { regions_min_0_q0 in_data 0 32 }  { regions_min_0_address1 MemPortADDR2 1 12 }  { regions_min_0_ce1 MemPortCE2 1 1 }  { regions_min_0_q1 in_data 0 32 } } }
	regions_min_0_offset { ap_none {  { regions_min_0_offset in_data 0 6 } } }
	regions_min_1 { ap_memory {  { regions_min_1_address0 mem_address 1 12 }  { regions_min_1_ce0 mem_ce 1 1 }  { regions_min_1_q0 in_data 0 32 }  { regions_min_1_address1 MemPortADDR2 1 12 }  { regions_min_1_ce1 MemPortCE2 1 1 }  { regions_min_1_q1 in_data 0 32 } } }
	regions_max_0 { ap_memory {  { regions_max_0_address0 mem_address 1 12 }  { regions_max_0_ce0 mem_ce 1 1 }  { regions_max_0_q0 in_data 0 32 }  { regions_max_0_address1 MemPortADDR2 1 12 }  { regions_max_0_ce1 MemPortCE2 1 1 }  { regions_max_0_q1 in_data 0 32 } } }
	regions_max_1 { ap_memory {  { regions_max_1_address0 mem_address 1 12 }  { regions_max_1_ce0 mem_ce 1 1 }  { regions_max_1_q0 in_data 0 32 }  { regions_max_1_address1 MemPortADDR2 1 12 }  { regions_max_1_ce1 MemPortCE2 1 1 }  { regions_max_1_q1 in_data 0 32 } } }
	regions_center_0 { ap_memory {  { regions_center_0_address0 mem_address 1 12 }  { regions_center_0_ce0 mem_ce 1 1 }  { regions_center_0_q0 in_data 0 32 }  { regions_center_0_address1 MemPortADDR2 1 12 }  { regions_center_0_ce1 MemPortCE2 1 1 }  { regions_center_0_q1 in_data 0 32 } } }
	regions_center_1 { ap_memory {  { regions_center_1_address0 mem_address 1 12 }  { regions_center_1_ce0 mem_ce 1 1 }  { regions_center_1_q0 in_data 0 32 }  { regions_center_1_address1 MemPortADDR2 1 12 }  { regions_center_1_ce1 MemPortCE2 1 1 }  { regions_center_1_q1 in_data 0 32 } } }
	n_regions { ap_none {  { n_regions in_data 0 8 } } }
	d_read { ap_none {  { d_read in_data 0 32 } } }
	d_read_60 { ap_none {  { d_read_60 in_data 0 32 } } }
	d_read_61 { ap_none {  { d_read_61 in_data 0 32 } } }
	d_read_62 { ap_none {  { d_read_62 in_data 0 32 } } }
	d_read_63 { ap_none {  { d_read_63 in_data 0 32 } } }
	d_read_64 { ap_none {  { d_read_64 in_data 0 32 } } }
	d_read_65 { ap_none {  { d_read_65 in_data 0 32 } } }
	d_read_66 { ap_none {  { d_read_66 in_data 0 32 } } }
}
