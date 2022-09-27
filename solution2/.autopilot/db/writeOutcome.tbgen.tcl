set moduleName writeOutcome
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
set C_modelName {writeOutcome}
set C_modelType { void 0 }
set C_modelArgList {
	{ errorInTask int 1 regular {array 16 { 0 } 1 1 }  }
	{ p_read int 4 regular  }
	{ p_read1 int 8 regular  }
	{ p_read2 int 8 regular  }
	{ p_read3 int 16 regular  }
	{ p_read4 int 1 regular  }
	{ toScheduler int 8 regular {axi_s 1 volatile  { toScheduler Data } }  }
	{ outcomeInRam int 288 regular {array 16 { 0 } 1 1 }  }
	{ data float 32 regular {fifo 0}  }
	{ data_1 float 32 regular {fifo 0}  }
	{ data_2 float 32 regular {fifo 0}  }
	{ data_3 float 32 regular {fifo 0}  }
	{ data_4 float 32 regular {fifo 0}  }
	{ data_5 float 32 regular {fifo 0}  }
	{ data_6 float 32 regular {fifo 0}  }
	{ data_7 float 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "errorInTask", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "toScheduler", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outcomeInRam", "interface" : "memory", "bitwidth" : 288, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ errorInTask_address0 sc_out sc_lv 4 signal 0 } 
	{ errorInTask_ce0 sc_out sc_logic 1 signal 0 } 
	{ errorInTask_we0 sc_out sc_logic 1 signal 0 } 
	{ errorInTask_d0 sc_out sc_lv 1 signal 0 } 
	{ p_read sc_in sc_lv 4 signal 1 } 
	{ p_read1 sc_in sc_lv 8 signal 2 } 
	{ p_read2 sc_in sc_lv 8 signal 3 } 
	{ p_read3 sc_in sc_lv 16 signal 4 } 
	{ p_read4 sc_in sc_lv 1 signal 5 } 
	{ toScheduler_TDATA sc_out sc_lv 8 signal 6 } 
	{ toScheduler_TVALID sc_out sc_logic 1 outvld 6 } 
	{ toScheduler_TREADY sc_in sc_logic 1 outacc 6 } 
	{ outcomeInRam_address0 sc_out sc_lv 4 signal 7 } 
	{ outcomeInRam_ce0 sc_out sc_logic 1 signal 7 } 
	{ outcomeInRam_we0 sc_out sc_lv 36 signal 7 } 
	{ outcomeInRam_d0 sc_out sc_lv 288 signal 7 } 
	{ data_dout sc_in sc_lv 32 signal 8 } 
	{ data_num_data_valid sc_in sc_lv 2 signal 8 } 
	{ data_fifo_cap sc_in sc_lv 2 signal 8 } 
	{ data_empty_n sc_in sc_logic 1 signal 8 } 
	{ data_read sc_out sc_logic 1 signal 8 } 
	{ data_1_dout sc_in sc_lv 32 signal 9 } 
	{ data_1_num_data_valid sc_in sc_lv 2 signal 9 } 
	{ data_1_fifo_cap sc_in sc_lv 2 signal 9 } 
	{ data_1_empty_n sc_in sc_logic 1 signal 9 } 
	{ data_1_read sc_out sc_logic 1 signal 9 } 
	{ data_2_dout sc_in sc_lv 32 signal 10 } 
	{ data_2_num_data_valid sc_in sc_lv 2 signal 10 } 
	{ data_2_fifo_cap sc_in sc_lv 2 signal 10 } 
	{ data_2_empty_n sc_in sc_logic 1 signal 10 } 
	{ data_2_read sc_out sc_logic 1 signal 10 } 
	{ data_3_dout sc_in sc_lv 32 signal 11 } 
	{ data_3_num_data_valid sc_in sc_lv 2 signal 11 } 
	{ data_3_fifo_cap sc_in sc_lv 2 signal 11 } 
	{ data_3_empty_n sc_in sc_logic 1 signal 11 } 
	{ data_3_read sc_out sc_logic 1 signal 11 } 
	{ data_4_dout sc_in sc_lv 32 signal 12 } 
	{ data_4_num_data_valid sc_in sc_lv 2 signal 12 } 
	{ data_4_fifo_cap sc_in sc_lv 2 signal 12 } 
	{ data_4_empty_n sc_in sc_logic 1 signal 12 } 
	{ data_4_read sc_out sc_logic 1 signal 12 } 
	{ data_5_dout sc_in sc_lv 32 signal 13 } 
	{ data_5_num_data_valid sc_in sc_lv 2 signal 13 } 
	{ data_5_fifo_cap sc_in sc_lv 2 signal 13 } 
	{ data_5_empty_n sc_in sc_logic 1 signal 13 } 
	{ data_5_read sc_out sc_logic 1 signal 13 } 
	{ data_6_dout sc_in sc_lv 32 signal 14 } 
	{ data_6_num_data_valid sc_in sc_lv 2 signal 14 } 
	{ data_6_fifo_cap sc_in sc_lv 2 signal 14 } 
	{ data_6_empty_n sc_in sc_logic 1 signal 14 } 
	{ data_6_read sc_out sc_logic 1 signal 14 } 
	{ data_7_dout sc_in sc_lv 32 signal 15 } 
	{ data_7_num_data_valid sc_in sc_lv 2 signal 15 } 
	{ data_7_fifo_cap sc_in sc_lv 2 signal 15 } 
	{ data_7_empty_n sc_in sc_logic 1 signal 15 } 
	{ data_7_read sc_out sc_logic 1 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "errorInTask_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "errorInTask", "role": "address0" }} , 
 	{ "name": "errorInTask_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "ce0" }} , 
 	{ "name": "errorInTask_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "we0" }} , 
 	{ "name": "errorInTask_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "errorInTask", "role": "d0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "toScheduler_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "toScheduler", "role": "TDATA" }} , 
 	{ "name": "toScheduler_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "toScheduler", "role": "TVALID" }} , 
 	{ "name": "toScheduler_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "toScheduler", "role": "TREADY" }} , 
 	{ "name": "outcomeInRam_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "address0" }} , 
 	{ "name": "outcomeInRam_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "ce0" }} , 
 	{ "name": "outcomeInRam_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "we0" }} , 
 	{ "name": "outcomeInRam_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "outcomeInRam", "role": "d0" }} , 
 	{ "name": "data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "dout" }} , 
 	{ "name": "data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data", "role": "num_data_valid" }} , 
 	{ "name": "data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data", "role": "fifo_cap" }} , 
 	{ "name": "data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "empty_n" }} , 
 	{ "name": "data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "read" }} , 
 	{ "name": "data_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_1", "role": "dout" }} , 
 	{ "name": "data_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_1", "role": "num_data_valid" }} , 
 	{ "name": "data_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_1", "role": "fifo_cap" }} , 
 	{ "name": "data_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_1", "role": "empty_n" }} , 
 	{ "name": "data_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_1", "role": "read" }} , 
 	{ "name": "data_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_2", "role": "dout" }} , 
 	{ "name": "data_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_2", "role": "num_data_valid" }} , 
 	{ "name": "data_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_2", "role": "fifo_cap" }} , 
 	{ "name": "data_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_2", "role": "empty_n" }} , 
 	{ "name": "data_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_2", "role": "read" }} , 
 	{ "name": "data_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_3", "role": "dout" }} , 
 	{ "name": "data_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_3", "role": "num_data_valid" }} , 
 	{ "name": "data_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_3", "role": "fifo_cap" }} , 
 	{ "name": "data_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_3", "role": "empty_n" }} , 
 	{ "name": "data_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_3", "role": "read" }} , 
 	{ "name": "data_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_4", "role": "dout" }} , 
 	{ "name": "data_4_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_4", "role": "num_data_valid" }} , 
 	{ "name": "data_4_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_4", "role": "fifo_cap" }} , 
 	{ "name": "data_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_4", "role": "empty_n" }} , 
 	{ "name": "data_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_4", "role": "read" }} , 
 	{ "name": "data_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_5", "role": "dout" }} , 
 	{ "name": "data_5_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_5", "role": "num_data_valid" }} , 
 	{ "name": "data_5_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_5", "role": "fifo_cap" }} , 
 	{ "name": "data_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_5", "role": "empty_n" }} , 
 	{ "name": "data_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_5", "role": "read" }} , 
 	{ "name": "data_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_6", "role": "dout" }} , 
 	{ "name": "data_6_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_6", "role": "num_data_valid" }} , 
 	{ "name": "data_6_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_6", "role": "fifo_cap" }} , 
 	{ "name": "data_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_6", "role": "empty_n" }} , 
 	{ "name": "data_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_6", "role": "read" }} , 
 	{ "name": "data_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_7", "role": "dout" }} , 
 	{ "name": "data_7_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_7", "role": "num_data_valid" }} , 
 	{ "name": "data_7_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data_7", "role": "fifo_cap" }} , 
 	{ "name": "data_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_7", "role": "empty_n" }} , 
 	{ "name": "data_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_7", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "writeOutcome",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "toScheduler", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "toScheduler_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "data_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "data_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "data_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "data_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "data_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "data_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "data_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "data_7_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state2"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state3", "ap_ST_fsm_state7"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state2_blk"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outcome_AOV_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_84_32_1_1_U638", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	writeOutcome {
		errorInTask {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		toScheduler {Type O LastRead -1 FirstWrite 1}
		outcomeInRam {Type O LastRead -1 FirstWrite 5}
		data {Type I LastRead 0 FirstWrite -1}
		data_1 {Type I LastRead 0 FirstWrite -1}
		data_2 {Type I LastRead 0 FirstWrite -1}
		data_3 {Type I LastRead 0 FirstWrite -1}
		data_4 {Type I LastRead 0 FirstWrite -1}
		data_5 {Type I LastRead 0 FirstWrite -1}
		data_6 {Type I LastRead 0 FirstWrite -1}
		data_7 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	errorInTask { ap_memory {  { errorInTask_address0 mem_address 1 4 }  { errorInTask_ce0 mem_ce 1 1 }  { errorInTask_we0 mem_we 1 1 }  { errorInTask_d0 mem_din 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 4 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 16 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 1 } } }
	toScheduler { axis {  { toScheduler_TDATA out_data 1 8 }  { toScheduler_TVALID out_vld 1 1 }  { toScheduler_TREADY out_acc 0 1 } } }
	outcomeInRam { ap_memory {  { outcomeInRam_address0 mem_address 1 4 }  { outcomeInRam_ce0 mem_ce 1 1 }  { outcomeInRam_we0 mem_we 1 36 }  { outcomeInRam_d0 mem_din 1 288 } } }
	data { ap_fifo {  { data_dout fifo_port_we 0 32 }  { data_num_data_valid fifo_status_num_data_valid 0 2 }  { data_fifo_cap fifo_update 0 2 }  { data_empty_n fifo_status 0 1 }  { data_read fifo_data 1 1 } } }
	data_1 { ap_fifo {  { data_1_dout fifo_port_we 0 32 }  { data_1_num_data_valid fifo_status_num_data_valid 0 2 }  { data_1_fifo_cap fifo_update 0 2 }  { data_1_empty_n fifo_status 0 1 }  { data_1_read fifo_data 1 1 } } }
	data_2 { ap_fifo {  { data_2_dout fifo_port_we 0 32 }  { data_2_num_data_valid fifo_status_num_data_valid 0 2 }  { data_2_fifo_cap fifo_update 0 2 }  { data_2_empty_n fifo_status 0 1 }  { data_2_read fifo_data 1 1 } } }
	data_3 { ap_fifo {  { data_3_dout fifo_port_we 0 32 }  { data_3_num_data_valid fifo_status_num_data_valid 0 2 }  { data_3_fifo_cap fifo_update 0 2 }  { data_3_empty_n fifo_status 0 1 }  { data_3_read fifo_data 1 1 } } }
	data_4 { ap_fifo {  { data_4_dout fifo_port_we 0 32 }  { data_4_num_data_valid fifo_status_num_data_valid 0 2 }  { data_4_fifo_cap fifo_update 0 2 }  { data_4_empty_n fifo_status 0 1 }  { data_4_read fifo_data 1 1 } } }
	data_5 { ap_fifo {  { data_5_dout fifo_port_we 0 32 }  { data_5_num_data_valid fifo_status_num_data_valid 0 2 }  { data_5_fifo_cap fifo_update 0 2 }  { data_5_empty_n fifo_status 0 1 }  { data_5_read fifo_data 1 1 } } }
	data_6 { ap_fifo {  { data_6_dout fifo_port_we 0 32 }  { data_6_num_data_valid fifo_status_num_data_valid 0 2 }  { data_6_fifo_cap fifo_update 0 2 }  { data_6_empty_n fifo_status 0 1 }  { data_6_read fifo_data 1 1 } } }
	data_7 { ap_fifo {  { data_7_dout fifo_port_we 0 32 }  { data_7_num_data_valid fifo_status_num_data_valid 0 2 }  { data_7_fifo_cap fifo_update 0 2 }  { data_7_empty_n fifo_status 0 1 }  { data_7_read fifo_data 1 1 } } }
}
