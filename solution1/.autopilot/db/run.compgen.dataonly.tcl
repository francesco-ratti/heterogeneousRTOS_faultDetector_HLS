# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
contr { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
trainedRegions { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 24
	offset_end 35
}
realTaskId { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 36
	offset_end 47
}
n_regions_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 48
	offset_end 59
}
sharedMem { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 60
	offset_end 71
}
ap_start {
	mailbox_input_ctrl 0
	mailbox_output_ctrl 0
	auto_restart_enabled 1
	auto_restart_counter_num 0
	auto_restart_counter_offset 16
	auto_restart_counter_size 32
}
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
ap_local_deadlock { 
	dir O
	width 1
	depth 1
	mode ap_none
	offset -1
	offset_end -1
}
interrupt {
    ap_local_deadlock 5
}
}
dict set axilite_register_dict control $port_control


