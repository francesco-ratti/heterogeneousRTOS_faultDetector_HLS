dict set slaves control {ports {contr {type i_ap_none width 32} sharedMem {type i_ap_none width 64} realTaskId {type x_ap_memory width 8} n_regions_in {type i_ap_memory width 8} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_continue {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1} trainedRegions {type x_ap_memory width 32}} mems {realTaskId {width 8} n_regions_in {width 8} trainedRegions {width 32}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode COR
