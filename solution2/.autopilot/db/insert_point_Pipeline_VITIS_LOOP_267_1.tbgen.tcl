set moduleName insert_point_Pipeline_VITIS_LOOP_267_1
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
set C_modelName {insert_point_Pipeline_VITIS_LOOP_267_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln248_1 int 9 regular  }
	{ regions_min_0 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ regions_min_1 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ regions_max_0 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ regions_max_1 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ regions_center_0 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ regions_center_1 float 32 regular {array 4096 { 1 1 } 1 1 }  }
	{ merge_2_out int 10 regular {pointer 1}  }
	{ merge_1_out int 10 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln248_1", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "regions_min_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_min_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_max_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_max_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_center_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regions_center_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "merge_2_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "merge_1_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 90
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln248_1 sc_in sc_lv 9 signal 0 } 
	{ regions_min_0_address0 sc_out sc_lv 12 signal 1 } 
	{ regions_min_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ regions_min_0_q0 sc_in sc_lv 32 signal 1 } 
	{ regions_min_0_address1 sc_out sc_lv 12 signal 1 } 
	{ regions_min_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ regions_min_0_q1 sc_in sc_lv 32 signal 1 } 
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
	{ merge_2_out sc_out sc_lv 10 signal 7 } 
	{ merge_2_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ merge_1_out sc_out sc_lv 10 signal 8 } 
	{ merge_1_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ grp_fu_1693_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1693_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1693_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1693_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1693_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1697_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1697_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1697_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1697_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1697_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1701_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1701_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1701_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1701_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1701_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1705_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1705_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1705_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1705_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1705_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1709_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1709_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1709_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1709_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1709_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1713_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1713_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1713_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1713_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1713_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1717_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1717_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1717_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1717_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1717_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1721_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1721_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1721_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1721_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1725_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1725_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1725_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1725_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln248_1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln248_1", "role": "default" }} , 
 	{ "name": "regions_min_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_0", "role": "address0" }} , 
 	{ "name": "regions_min_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_0", "role": "ce0" }} , 
 	{ "name": "regions_min_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "q0" }} , 
 	{ "name": "regions_min_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "regions_min_0", "role": "address1" }} , 
 	{ "name": "regions_min_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "regions_min_0", "role": "ce1" }} , 
 	{ "name": "regions_min_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regions_min_0", "role": "q1" }} , 
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
 	{ "name": "merge_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "merge_2_out", "role": "default" }} , 
 	{ "name": "merge_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "merge_2_out", "role": "ap_vld" }} , 
 	{ "name": "merge_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "merge_1_out", "role": "default" }} , 
 	{ "name": "merge_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "merge_1_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_1693_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1693_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1693_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1693_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1693_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1693_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1693_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1693_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1693_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1693_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1697_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1697_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1697_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1697_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1697_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1697_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1697_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1697_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1697_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1697_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1701_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1701_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1701_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1701_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1701_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1701_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1701_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1701_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1701_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1701_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1705_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1705_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1705_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1705_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1705_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1705_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1705_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1705_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1705_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1705_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1709_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1709_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1709_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1709_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1709_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1709_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1709_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1709_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1709_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1709_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1713_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1713_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1713_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1713_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1713_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1713_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1713_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1713_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1713_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1713_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1717_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1717_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1717_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1717_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1717_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1717_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1717_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1717_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1717_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1717_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1721_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1721_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1721_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1721_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1721_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1721_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1721_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1721_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1725_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1725_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1725_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1725_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1725_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1725_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1725_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1725_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_4_full_dsp_1_U39", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_4_full_dsp_1_U40", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_4_full_dsp_1_U41", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U42", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U48", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U49", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U50", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U51", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U52", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U53", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	insert_point_Pipeline_VITIS_LOOP_267_1 {
		zext_ln248_1 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type I LastRead 9 FirstWrite -1}
		regions_min_1 {Type I LastRead 9 FirstWrite -1}
		regions_max_0 {Type I LastRead 9 FirstWrite -1}
		regions_max_1 {Type I LastRead 9 FirstWrite -1}
		regions_center_0 {Type I LastRead 9 FirstWrite -1}
		regions_center_1 {Type I LastRead 9 FirstWrite -1}
		merge_2_out {Type O LastRead -1 FirstWrite 45}
		merge_1_out {Type O LastRead -1 FirstWrite 45}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46", "Max" : "1134"}
	, {"Name" : "Interval", "Min" : "46", "Max" : "1134"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln248_1 { ap_none {  { zext_ln248_1 in_data 0 9 } } }
	regions_min_0 { ap_memory {  { regions_min_0_address0 mem_address 1 12 }  { regions_min_0_ce0 mem_ce 1 1 }  { regions_min_0_q0 in_data 0 32 }  { regions_min_0_address1 MemPortADDR2 1 12 }  { regions_min_0_ce1 MemPortCE2 1 1 }  { regions_min_0_q1 in_data 0 32 } } }
	regions_min_1 { ap_memory {  { regions_min_1_address0 mem_address 1 12 }  { regions_min_1_ce0 mem_ce 1 1 }  { regions_min_1_q0 in_data 0 32 }  { regions_min_1_address1 MemPortADDR2 1 12 }  { regions_min_1_ce1 MemPortCE2 1 1 }  { regions_min_1_q1 in_data 0 32 } } }
	regions_max_0 { ap_memory {  { regions_max_0_address0 mem_address 1 12 }  { regions_max_0_ce0 mem_ce 1 1 }  { regions_max_0_q0 in_data 0 32 }  { regions_max_0_address1 MemPortADDR2 1 12 }  { regions_max_0_ce1 MemPortCE2 1 1 }  { regions_max_0_q1 in_data 0 32 } } }
	regions_max_1 { ap_memory {  { regions_max_1_address0 mem_address 1 12 }  { regions_max_1_ce0 mem_ce 1 1 }  { regions_max_1_q0 in_data 0 32 }  { regions_max_1_address1 MemPortADDR2 1 12 }  { regions_max_1_ce1 MemPortCE2 1 1 }  { regions_max_1_q1 in_data 0 32 } } }
	regions_center_0 { ap_memory {  { regions_center_0_address0 mem_address 1 12 }  { regions_center_0_ce0 mem_ce 1 1 }  { regions_center_0_q0 in_data 0 32 }  { regions_center_0_address1 MemPortADDR2 1 12 }  { regions_center_0_ce1 MemPortCE2 1 1 }  { regions_center_0_q1 in_data 0 32 } } }
	regions_center_1 { ap_memory {  { regions_center_1_address0 mem_address 1 12 }  { regions_center_1_ce0 mem_ce 1 1 }  { regions_center_1_q0 in_data 0 32 }  { regions_center_1_address1 MemPortADDR2 1 12 }  { regions_center_1_ce1 MemPortCE2 1 1 }  { regions_center_1_q1 in_data 0 32 } } }
	merge_2_out { ap_vld {  { merge_2_out out_data 1 10 }  { merge_2_out_ap_vld out_vld 1 1 } } }
	merge_1_out { ap_vld {  { merge_1_out out_data 1 10 }  { merge_1_out_ap_vld out_vld 1 1 } } }
}
