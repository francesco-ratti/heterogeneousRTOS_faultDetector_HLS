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
	{ regions_min_1_offset int 6 regular  }
	{ regions_max_0 float 32 regular {array 4096 { 2 2 } 1 1 }  }
	{ regions_max_0_offset int 6 regular  }
	{ regions_max_1 float 32 regular {array 4096 { 2 2 } 1 1 }  }
	{ regions_max_1_offset int 6 regular  }
	{ regions_center_0 float 32 regular {array 4096 { 2 2 } 1 1 }  }
	{ regions_center_0_offset int 6 regular  }
	{ regions_center_1 float 32 regular {array 4096 { 2 2 } 1 1 }  }
	{ regions_center_1_offset int 6 regular  }
	{ n_regions int 8 regular {pointer 2}  }
	{ d_read float 32 regular  }
	{ d_read_23 float 32 regular  }
	{ d_read_24 float 32 regular  }
	{ d_read_25 float 32 regular  }
	{ d_read_26 float 32 regular  }
	{ d_read_27 float 32 regular  }
	{ d_read_28 float 32 regular  }
	{ d_read_29 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "regions_min_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "regions_min_0_offset", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "regions_min_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "regions_min_1_offset", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "regions_max_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "regions_max_0_offset", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "regions_max_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "regions_max_1_offset", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "regions_center_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "regions_center_0_offset", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "regions_center_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "regions_center_1_offset", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "n_regions", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "d_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_23", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_24", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_25", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_26", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_27", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_28", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_read_29", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 83
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
	{ regions_min_1_offset sc_in sc_lv 6 signal 3 } 
	{ regions_max_0_address0 sc_out sc_lv 12 signal 4 } 
	{ regions_max_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ regions_max_0_we0 sc_out sc_logic 1 signal 4 } 
	{ regions_max_0_d0 sc_out sc_lv 32 signal 4 } 
	{ regions_max_0_q0 sc_in sc_lv 32 signal 4 } 
	{ regions_max_0_address1 sc_out sc_lv 12 signal 4 } 
	{ regions_max_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ regions_max_0_we1 sc_out sc_logic 1 signal 4 } 
	{ regions_max_0_d1 sc_out sc_lv 32 signal 4 } 
	{ regions_max_0_q1 sc_in sc_lv 32 signal 4 } 
	{ regions_max_0_offset sc_in sc_lv 6 signal 5 } 
	{ regions_max_1_address0 sc_out sc_lv 12 signal 6 } 
	{ regions_max_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ regions_max_1_we0 sc_out sc_logic 1 signal 6 } 
	{ regions_max_1_d0 sc_out sc_lv 32 signal 6 } 
	{ regions_max_1_q0 sc_in sc_lv 32 signal 6 } 
	{ regions_max_1_address1 sc_out sc_lv 12 signal 6 } 
	{ regions_max_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ regions_max_1_we1 sc_out sc_logic 1 signal 6 } 
	{ regions_max_1_d1 sc_out sc_lv 32 signal 6 } 
	{ regions_max_1_q1 sc_in sc_lv 32 signal 6 } 
	{ regions_max_1_offset sc_in sc_lv 6 signal 7 } 
	{ regions_center_0_address0 sc_out sc_lv 12 signal 8 } 
	{ regions_center_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ regions_center_0_we0 sc_out sc_logic 1 signal 8 } 
	{ regions_center_0_d0 sc_out sc_lv 32 signal 8 } 
	{ regions_center_0_q0 sc_in sc_lv 32 signal 8 } 
	{ regions_center_0_address1 sc_out sc_lv 12 signal 8 } 
	{ regions_center_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ regions_center_0_we1 sc_out sc_logic 1 signal 8 } 
	{ regions_center_0_d1 sc_out sc_lv 32 signal 8 } 
	{ regions_center_0_q1 sc_in sc_lv 32 signal 8 } 
	{ regions_center_0_offset sc_in sc_lv 6 signal 9 } 
	{ regions_center_1_address0 sc_out sc_lv 12 signal 10 } 
	{ regions_center_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ regions_center_1_we0 sc_out sc_logic 1 signal 10 } 
	{ regions_center_1_d0 sc_out sc_lv 32 signal 10 } 
	{ regions_center_1_q0 sc_in sc_lv 32 signal 10 } 
	{ regions_center_1_address1 sc_out sc_lv 12 signal 10 } 
	{ regions_center_1_ce1 sc_out sc_logic 1 signal 10 } 
	{ regions_center_1_we1 sc_out sc_logic 1 signal 10 } 
	{ regions_center_1_d1 sc_out sc_lv 32 signal 10 } 
	{ regions_center_1_q1 sc_in sc_lv 32 signal 10 } 
	{ regions_center_1_offset sc_in sc_lv 6 signal 11 } 
	{ n_regions_i sc_in sc_lv 8 signal 12 } 
	{ n_regions_o sc_out sc_lv 8 signal 12 } 
	{ n_regions_o_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ d_read sc_in sc_lv 32 signal 13 } 
	{ d_read_23 sc_in sc_lv 32 signal 14 } 
	{ d_read_24 sc_in sc_lv 32 signal 15 } 
	{ d_read_25 sc_in sc_lv 32 signal 16 } 
	{ d_read_26 sc_in sc_lv 32 signal 17 } 
	{ d_read_27 sc_in sc_lv 32 signal 18 } 
	{ d_read_28 sc_in sc_lv 32 signal 19 } 
	{ d_read_29 sc_in sc_lv 32 signal 20 } 
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
 	{ "name": "regions_min_1_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "regions_min_1_offset", "role": "default" }} , 
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
 	{ "name": "regions_max_0_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "regions_max_0_offset", "role": "default" }} , 
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
 	{ "name": "regions_max_1_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "regions_max_1_offset", "role": "default" }} , 
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
 	{ "name": "regions_center_0_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "regions_center_0_offset", "role": "default" }} , 
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
 	{ "name": "regions_center_1_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "regions_center_1_offset", "role": "default" }} , 
 	{ "name": "n_regions_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions", "role": "i" }} , 
 	{ "name": "n_regions_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions", "role": "o" }} , 
 	{ "name": "n_regions_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "n_regions", "role": "o_ap_vld" }} , 
 	{ "name": "d_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read", "role": "default" }} , 
 	{ "name": "d_read_23", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_23", "role": "default" }} , 
 	{ "name": "d_read_24", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_24", "role": "default" }} , 
 	{ "name": "d_read_25", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_25", "role": "default" }} , 
 	{ "name": "d_read_26", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_26", "role": "default" }} , 
 	{ "name": "d_read_27", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_27", "role": "default" }} , 
 	{ "name": "d_read_28", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_28", "role": "default" }} , 
 	{ "name": "d_read_29", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "d_read_29", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "insert_point",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "1268",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions_min_0", "Type" : "Stable", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987", "Port" : "regions_min_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "regions_min_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Stable", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987", "Port" : "regions_min_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "regions_min_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Stable", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987", "Port" : "regions_max_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "regions_max_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Stable", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987", "Port" : "regions_max_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "regions_max_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Stable", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987", "Port" : "regions_center_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "regions_center_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Stable", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987", "Port" : "regions_center_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "regions_center_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "d_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_read_29", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2", "ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4", "ap_ST_fsm_state28"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "insert_point_label4", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state5", "ap_ST_fsm_state28"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "insert_point_label6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state18"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state19"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "insert_point_Pipeline_VITIS_LOOP_262_1",
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
			{"Name" : "zext_ln243_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln243_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln243_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln243_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln243_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "zext_ln243", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "merge_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "merge_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_262_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.fsub_32ns_32ns_32_4_full_dsp_1_U7", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.fsub_32ns_32ns_32_4_full_dsp_1_U8", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.fsub_32ns_32ns_32_4_full_dsp_1_U9", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.fsub_32ns_32ns_32_4_full_dsp_1_U10", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.faddfsub_32ns_32ns_32_4_full_dsp_1_U11", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.faddfsub_32ns_32ns_32_4_full_dsp_1_U12", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.fadd_32ns_32ns_32_4_full_dsp_1_U13", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.fmul_32ns_32ns_32_2_max_dsp_1_U15", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.mux_21_32_1_1_U19", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.mux_21_32_1_1_U20", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.mux_21_32_1_1_U21", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.mux_21_32_1_1_U22", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.mux_21_32_1_1_U23", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.mux_21_32_1_1_U24", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point_Pipeline_VITIS_LOOP_262_1_fu_987.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_4_full_dsp_1_U44", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U45", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U46", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U47", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U48", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_32_1_1_U49", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_32_1_1_U50", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U51", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U52", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U53", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U54", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	insert_point {
		regions_min_0 {Type IO LastRead 9 FirstWrite -1}
		regions_min_0_offset {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type IO LastRead 9 FirstWrite -1}
		regions_min_1_offset {Type I LastRead 0 FirstWrite -1}
		regions_max_0 {Type IO LastRead 9 FirstWrite -1}
		regions_max_0_offset {Type I LastRead 0 FirstWrite -1}
		regions_max_1 {Type IO LastRead 9 FirstWrite -1}
		regions_max_1_offset {Type I LastRead 0 FirstWrite -1}
		regions_center_0 {Type IO LastRead 9 FirstWrite -1}
		regions_center_0_offset {Type I LastRead 0 FirstWrite -1}
		regions_center_1 {Type IO LastRead 9 FirstWrite -1}
		regions_center_1_offset {Type I LastRead 0 FirstWrite -1}
		n_regions {Type IO LastRead 1 FirstWrite 13}
		d_read {Type I LastRead 0 FirstWrite -1}
		d_read_23 {Type I LastRead 0 FirstWrite -1}
		d_read_24 {Type I LastRead 0 FirstWrite -1}
		d_read_25 {Type I LastRead 0 FirstWrite -1}
		d_read_26 {Type I LastRead 0 FirstWrite -1}
		d_read_27 {Type I LastRead 0 FirstWrite -1}
		d_read_28 {Type I LastRead 0 FirstWrite -1}
		d_read_29 {Type I LastRead 0 FirstWrite -1}}
	insert_point_Pipeline_VITIS_LOOP_262_1 {
		zext_ln243_5 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type I LastRead 9 FirstWrite -1}
		zext_ln243_4 {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type I LastRead 9 FirstWrite -1}
		zext_ln243_3 {Type I LastRead 0 FirstWrite -1}
		regions_max_0 {Type I LastRead 9 FirstWrite -1}
		zext_ln243_2 {Type I LastRead 0 FirstWrite -1}
		regions_max_1 {Type I LastRead 9 FirstWrite -1}
		zext_ln243_1 {Type I LastRead 0 FirstWrite -1}
		regions_center_0 {Type I LastRead 9 FirstWrite -1}
		zext_ln243 {Type I LastRead 0 FirstWrite -1}
		regions_center_1 {Type I LastRead 9 FirstWrite -1}
		merge_2_out {Type O LastRead -1 FirstWrite 45}
		merge_1_out {Type O LastRead -1 FirstWrite 45}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "1268"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "1268"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	regions_min_0 { ap_stable {  { regions_min_0_address0 mem_address 1 12 }  { regions_min_0_ce0 mem_ce 1 1 }  { regions_min_0_we0 mem_we 1 1 }  { regions_min_0_d0 mem_din 1 32 }  { regions_min_0_q0 in_data 0 32 }  { regions_min_0_address1 MemPortADDR2 1 12 }  { regions_min_0_ce1 MemPortCE2 1 1 }  { regions_min_0_we1 MemPortWE2 1 1 }  { regions_min_0_d1 MemPortDIN2 1 32 }  { regions_min_0_q1 in_data 0 32 } } }
	regions_min_0_offset { ap_none {  { regions_min_0_offset in_data 0 6 } } }
	regions_min_1 { ap_stable {  { regions_min_1_address0 mem_address 1 12 }  { regions_min_1_ce0 mem_ce 1 1 }  { regions_min_1_we0 mem_we 1 1 }  { regions_min_1_d0 mem_din 1 32 }  { regions_min_1_q0 in_data 0 32 }  { regions_min_1_address1 MemPortADDR2 1 12 }  { regions_min_1_ce1 MemPortCE2 1 1 }  { regions_min_1_we1 MemPortWE2 1 1 }  { regions_min_1_d1 MemPortDIN2 1 32 }  { regions_min_1_q1 in_data 0 32 } } }
	regions_min_1_offset { ap_none {  { regions_min_1_offset in_data 0 6 } } }
	regions_max_0 { ap_stable {  { regions_max_0_address0 mem_address 1 12 }  { regions_max_0_ce0 mem_ce 1 1 }  { regions_max_0_we0 mem_we 1 1 }  { regions_max_0_d0 mem_din 1 32 }  { regions_max_0_q0 in_data 0 32 }  { regions_max_0_address1 MemPortADDR2 1 12 }  { regions_max_0_ce1 MemPortCE2 1 1 }  { regions_max_0_we1 MemPortWE2 1 1 }  { regions_max_0_d1 MemPortDIN2 1 32 }  { regions_max_0_q1 in_data 0 32 } } }
	regions_max_0_offset { ap_none {  { regions_max_0_offset in_data 0 6 } } }
	regions_max_1 { ap_stable {  { regions_max_1_address0 mem_address 1 12 }  { regions_max_1_ce0 mem_ce 1 1 }  { regions_max_1_we0 mem_we 1 1 }  { regions_max_1_d0 mem_din 1 32 }  { regions_max_1_q0 in_data 0 32 }  { regions_max_1_address1 MemPortADDR2 1 12 }  { regions_max_1_ce1 MemPortCE2 1 1 }  { regions_max_1_we1 MemPortWE2 1 1 }  { regions_max_1_d1 MemPortDIN2 1 32 }  { regions_max_1_q1 in_data 0 32 } } }
	regions_max_1_offset { ap_none {  { regions_max_1_offset in_data 0 6 } } }
	regions_center_0 { ap_stable {  { regions_center_0_address0 mem_address 1 12 }  { regions_center_0_ce0 mem_ce 1 1 }  { regions_center_0_we0 mem_we 1 1 }  { regions_center_0_d0 mem_din 1 32 }  { regions_center_0_q0 mem_dout 0 32 }  { regions_center_0_address1 MemPortADDR2 1 12 }  { regions_center_0_ce1 MemPortCE2 1 1 }  { regions_center_0_we1 MemPortWE2 1 1 }  { regions_center_0_d1 MemPortDIN2 1 32 }  { regions_center_0_q1 MemPortDOUT2 0 32 } } }
	regions_center_0_offset { ap_none {  { regions_center_0_offset in_data 0 6 } } }
	regions_center_1 { ap_stable {  { regions_center_1_address0 mem_address 1 12 }  { regions_center_1_ce0 mem_ce 1 1 }  { regions_center_1_we0 mem_we 1 1 }  { regions_center_1_d0 mem_din 1 32 }  { regions_center_1_q0 mem_dout 0 32 }  { regions_center_1_address1 MemPortADDR2 1 12 }  { regions_center_1_ce1 MemPortCE2 1 1 }  { regions_center_1_we1 MemPortWE2 1 1 }  { regions_center_1_d1 MemPortDIN2 1 32 }  { regions_center_1_q1 MemPortDOUT2 0 32 } } }
	regions_center_1_offset { ap_none {  { regions_center_1_offset in_data 0 6 } } }
	n_regions { ap_ovld {  { n_regions_i in_data 0 8 }  { n_regions_o out_data 1 8 }  { n_regions_o_ap_vld out_vld 1 1 } } }
	d_read { ap_none {  { d_read in_data 0 32 } } }
	d_read_23 { ap_none {  { d_read_23 in_data 0 32 } } }
	d_read_24 { ap_none {  { d_read_24 in_data 0 32 } } }
	d_read_25 { ap_none {  { d_read_25 in_data 0 32 } } }
	d_read_26 { ap_none {  { d_read_26 in_data 0 32 } } }
	d_read_27 { ap_none {  { d_read_27 in_data 0 32 } } }
	d_read_28 { ap_none {  { d_read_28 in_data 0 32 } } }
	d_read_29 { ap_none {  { d_read_29 in_data 0 32 } } }
}
