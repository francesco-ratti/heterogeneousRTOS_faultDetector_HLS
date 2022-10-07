# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
errorInTask { 
	dir O
	width 8
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
accel_mode { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 44
	offset_end 51
}
trainedRegion_i { 
	dir I
	width 768
	depth 1
	mode ap_none
	offset 52
	offset_end 151
}
trainedRegion_o { 
	dir O
	width 768
	depth 1
	mode ap_none
	offset 152
	offset_end 251
}
IOCheckIdx { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 352
	offset_end 359
}
IORegionIdx { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 360
	offset_end 367
}
n_regions_in_i { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 368
	offset_end 375
}
n_regions_in_o { 
	dir O
	width 8
	depth 1
	mode ap_none
	offset 376
	offset_end 383
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


