set moduleName insert_point2
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
set C_modelName {insert_point2}
set C_modelType { int 8 }
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
	{ n_regions_V_read_2 int 8 regular  }
	{ n_regions_V_read int 8 regular  }
	{ p_read1 float 32 regular  }
	{ p_read2 float 32 regular  }
	{ p_read3 float 32 regular  }
	{ p_read4 float 32 regular  }
	{ p_read5 float 32 regular  }
	{ p_read6 float 32 regular  }
	{ p_read7 float 32 regular  }
	{ p_read8 float 32 regular  }
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
 	{ "Name" : "n_regions_V_read_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "n_regions_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8} ]}
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
	{ n_regions_V_read_2 sc_in sc_lv 8 signal 12 } 
	{ n_regions_V_read sc_in sc_lv 8 signal 13 } 
	{ p_read1 sc_in sc_lv 32 signal 14 } 
	{ p_read2 sc_in sc_lv 32 signal 15 } 
	{ p_read3 sc_in sc_lv 32 signal 16 } 
	{ p_read4 sc_in sc_lv 32 signal 17 } 
	{ p_read5 sc_in sc_lv 32 signal 18 } 
	{ p_read6 sc_in sc_lv 32 signal 19 } 
	{ p_read7 sc_in sc_lv 32 signal 20 } 
	{ p_read8 sc_in sc_lv 32 signal 21 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
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
 	{ "name": "n_regions_V_read_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions_V_read_2", "role": "default" }} , 
 	{ "name": "n_regions_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "n_regions_V_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "7", "23", "29", "30", "31", "32", "33"],
		"CDFG" : "insert_point2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "1204",
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
					{"ID" : "7", "SubInstance" : "grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855", "Port" : "regions_min_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label6_fu_879", "Port" : "regions_min_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "4", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label4_fu_824", "Port" : "regions_min_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "regions_min_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855", "Port" : "regions_min_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label6_fu_879", "Port" : "regions_min_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "4", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label4_fu_824", "Port" : "regions_min_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "regions_min_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855", "Port" : "regions_max_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label6_fu_879", "Port" : "regions_max_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "4", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label4_fu_824", "Port" : "regions_max_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "regions_max_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855", "Port" : "regions_max_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label6_fu_879", "Port" : "regions_max_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "4", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label4_fu_824", "Port" : "regions_max_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "regions_max_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855", "Port" : "regions_center_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label6_fu_879", "Port" : "regions_center_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "4", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label4_fu_824", "Port" : "regions_center_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "regions_center_0_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855", "Port" : "regions_center_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "23", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label6_fu_879", "Port" : "regions_center_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "4", "SubInstance" : "grp_insert_point2_Pipeline_insert_point_label4_fu_824", "Port" : "regions_center_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "regions_center_1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions_V_read_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_is_valid_label2_fu_804", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "insert_point2_Pipeline_is_valid_label2",
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
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_is_valid_label2_fu_804.mux_84_32_1_1_U145", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_is_valid_label2_fu_804.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_insert_point_label4_fu_824", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "insert_point2_Pipeline_insert_point_label4",
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
			{"Name" : "tmp_154", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_156", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_158", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_160", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_162", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_164", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions_load_cast", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "insert_point_label4", "PipelineType" : "NotSupport"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_insert_point_label4_fu_824.mux_84_32_1_1_U155", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_insert_point_label4_fu_824.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "insert_point2_Pipeline_VITIS_LOOP_262_1",
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
			{"Name" : "regions_min_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln243_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_min_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln243_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln243_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_max_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln243_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "zext_ln243", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions_center_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "merge_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "merge_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_262_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.fsub_32ns_32ns_32_4_full_dsp_1_U178", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.fsub_32ns_32ns_32_4_full_dsp_1_U179", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.fsub_32ns_32ns_32_4_full_dsp_1_U180", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.fsub_32ns_32ns_32_4_full_dsp_1_U181", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.faddfsub_32ns_32ns_32_4_full_dsp_1_U182", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.faddfsub_32ns_32ns_32_4_full_dsp_1_U183", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.fadd_32ns_32ns_32_4_full_dsp_1_U184", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.fmul_32ns_32ns_32_2_max_dsp_1_U186", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.mux_21_32_1_1_U190", "Parent" : "7"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.mux_21_32_1_1_U191", "Parent" : "7"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.mux_21_32_1_1_U192", "Parent" : "7"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.mux_21_32_1_1_U193", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.mux_21_32_1_1_U194", "Parent" : "7"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.mux_21_32_1_1_U195", "Parent" : "7"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_VITIS_LOOP_262_1_fu_855.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_insert_point_label6_fu_879", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28"],
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
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_insert_point_label6_fu_879.mux_21_32_1_1_U218", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_insert_point_label6_fu_879.mux_21_32_1_1_U219", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_insert_point_label6_fu_879.mux_21_32_1_1_U220", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_insert_point_label6_fu_879.mux_21_32_1_1_U221", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_insert_point2_Pipeline_insert_point_label6_fu_879.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U240", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U241", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U242", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_4_full_dsp_1_U243", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U244", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	insert_point2 {
		regions_min_0 {Type IO LastRead 9 FirstWrite -1}
		regions_min_0_offset {Type I LastRead 2 FirstWrite -1}
		regions_min_1 {Type IO LastRead 12 FirstWrite -1}
		regions_min_1_offset {Type I LastRead 2 FirstWrite -1}
		regions_max_0 {Type IO LastRead 9 FirstWrite -1}
		regions_max_0_offset {Type I LastRead 2 FirstWrite -1}
		regions_max_1 {Type IO LastRead 12 FirstWrite -1}
		regions_max_1_offset {Type I LastRead 2 FirstWrite -1}
		regions_center_0 {Type IO LastRead 9 FirstWrite -1}
		regions_center_0_offset {Type I LastRead 2 FirstWrite -1}
		regions_center_1 {Type IO LastRead 12 FirstWrite -1}
		regions_center_1_offset {Type I LastRead 2 FirstWrite -1}
		n_regions_V_read_2 {Type I LastRead 2 FirstWrite -1}
		n_regions_V_read {Type I LastRead 2 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}}
	insert_point2_Pipeline_is_valid_label2 {
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}}
	insert_point2_Pipeline_insert_point_label4 {
		tmp_154 {Type I LastRead 0 FirstWrite -1}
		regions_min_0 {Type O LastRead -1 FirstWrite 0}
		tmp_156 {Type I LastRead 0 FirstWrite -1}
		regions_min_1 {Type O LastRead -1 FirstWrite 0}
		tmp_158 {Type I LastRead 0 FirstWrite -1}
		regions_max_0 {Type O LastRead -1 FirstWrite 0}
		tmp_160 {Type I LastRead 0 FirstWrite -1}
		regions_max_1 {Type O LastRead -1 FirstWrite 0}
		tmp_162 {Type I LastRead 0 FirstWrite -1}
		regions_center_0 {Type O LastRead -1 FirstWrite 0}
		tmp_164 {Type I LastRead 0 FirstWrite -1}
		regions_center_1 {Type O LastRead -1 FirstWrite 0}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		n_regions_load_cast {Type I LastRead 0 FirstWrite -1}}
	insert_point2_Pipeline_VITIS_LOOP_262_1 {
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
		merge_1_out {Type O LastRead -1 FirstWrite 45}}
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
	{"Name" : "Latency", "Min" : "8", "Max" : "1204"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "1204"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	regions_min_0 { ap_memory {  { regions_min_0_address0 mem_address 1 12 }  { regions_min_0_ce0 mem_ce 1 1 }  { regions_min_0_we0 mem_we 1 1 }  { regions_min_0_d0 mem_din 1 32 }  { regions_min_0_q0 mem_dout 0 32 }  { regions_min_0_address1 MemPortADDR2 1 12 }  { regions_min_0_ce1 MemPortCE2 1 1 }  { regions_min_0_we1 MemPortWE2 1 1 }  { regions_min_0_d1 MemPortDIN2 1 32 }  { regions_min_0_q1 MemPortDOUT2 0 32 } } }
	regions_min_0_offset { ap_none {  { regions_min_0_offset in_data 0 6 } } }
	regions_min_1 { ap_memory {  { regions_min_1_address0 mem_address 1 12 }  { regions_min_1_ce0 mem_ce 1 1 }  { regions_min_1_we0 mem_we 1 1 }  { regions_min_1_d0 mem_din 1 32 }  { regions_min_1_q0 mem_dout 0 32 }  { regions_min_1_address1 MemPortADDR2 1 12 }  { regions_min_1_ce1 MemPortCE2 1 1 }  { regions_min_1_we1 MemPortWE2 1 1 }  { regions_min_1_d1 MemPortDIN2 1 32 }  { regions_min_1_q1 MemPortDOUT2 0 32 } } }
	regions_min_1_offset { ap_none {  { regions_min_1_offset in_data 0 6 } } }
	regions_max_0 { ap_memory {  { regions_max_0_address0 mem_address 1 12 }  { regions_max_0_ce0 mem_ce 1 1 }  { regions_max_0_we0 mem_we 1 1 }  { regions_max_0_d0 mem_din 1 32 }  { regions_max_0_q0 mem_dout 0 32 }  { regions_max_0_address1 MemPortADDR2 1 12 }  { regions_max_0_ce1 MemPortCE2 1 1 }  { regions_max_0_we1 MemPortWE2 1 1 }  { regions_max_0_d1 MemPortDIN2 1 32 }  { regions_max_0_q1 MemPortDOUT2 0 32 } } }
	regions_max_0_offset { ap_none {  { regions_max_0_offset in_data 0 6 } } }
	regions_max_1 { ap_memory {  { regions_max_1_address0 mem_address 1 12 }  { regions_max_1_ce0 mem_ce 1 1 }  { regions_max_1_we0 mem_we 1 1 }  { regions_max_1_d0 mem_din 1 32 }  { regions_max_1_q0 mem_dout 0 32 }  { regions_max_1_address1 MemPortADDR2 1 12 }  { regions_max_1_ce1 MemPortCE2 1 1 }  { regions_max_1_we1 MemPortWE2 1 1 }  { regions_max_1_d1 MemPortDIN2 1 32 }  { regions_max_1_q1 MemPortDOUT2 0 32 } } }
	regions_max_1_offset { ap_none {  { regions_max_1_offset in_data 0 6 } } }
	regions_center_0 { ap_memory {  { regions_center_0_address0 mem_address 1 12 }  { regions_center_0_ce0 mem_ce 1 1 }  { regions_center_0_we0 mem_we 1 1 }  { regions_center_0_d0 mem_din 1 32 }  { regions_center_0_q0 mem_dout 0 32 }  { regions_center_0_address1 MemPortADDR2 1 12 }  { regions_center_0_ce1 MemPortCE2 1 1 }  { regions_center_0_we1 MemPortWE2 1 1 }  { regions_center_0_d1 MemPortDIN2 1 32 }  { regions_center_0_q1 MemPortDOUT2 0 32 } } }
	regions_center_0_offset { ap_none {  { regions_center_0_offset in_data 0 6 } } }
	regions_center_1 { ap_memory {  { regions_center_1_address0 mem_address 1 12 }  { regions_center_1_ce0 mem_ce 1 1 }  { regions_center_1_we0 mem_we 1 1 }  { regions_center_1_d0 mem_din 1 32 }  { regions_center_1_q0 mem_dout 0 32 }  { regions_center_1_address1 MemPortADDR2 1 12 }  { regions_center_1_ce1 MemPortCE2 1 1 }  { regions_center_1_we1 MemPortWE2 1 1 }  { regions_center_1_d1 MemPortDIN2 1 32 }  { regions_center_1_q1 MemPortDOUT2 0 32 } } }
	regions_center_1_offset { ap_none {  { regions_center_1_offset in_data 0 6 } } }
	n_regions_V_read_2 { ap_none {  { n_regions_V_read_2 in_data 0 8 } } }
	n_regions_V_read { ap_none {  { n_regions_V_read in_data 0 8 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 32 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 32 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 32 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 32 } } }
}
