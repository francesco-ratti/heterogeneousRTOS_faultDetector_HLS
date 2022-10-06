# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
errorInTask { 
	dir O
	width 1
	depth 16
	mode ap_memory
	offset 16
	offset_end 31
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
inputAOV { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 32
	offset_end 43
}
readyForData { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 44
	offset_end 51
}
copyInputAOV { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
accel_mode { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
trainedRegion_i { 
	dir I
	width 768
	depth 1
	mode ap_none
	offset 68
	offset_end 167
}
trainedRegion_o { 
	dir O
	width 768
	depth 1
	mode ap_none
	offset 168
	offset_end 267
}
IOCheckIdx { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 368
	offset_end 375
}
IORegionIdx { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 376
	offset_end 383
}
n_regions_in_i { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 384
	offset_end 391
}
n_regions_in_o { 
	dir O
	width 8
	depth 1
	mode ap_none
	offset 392
	offset_end 399
}
outcomeInRam { 
	dir O
	width 288
	depth 16
	mode ap_memory
	offset 1024
	offset_end 2047
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 1
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


