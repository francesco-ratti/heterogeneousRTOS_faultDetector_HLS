dict set slaves control {ports {errorInTask {type o_ap_memory width 1} inputAOV {type i_ap_none width 64} readyForData {type i_ap_none width 8} copyInputAOV {type i_ap_none width 8} accel_mode {type i_ap_none width 8} trainedRegion_i {type i_ap_none width 768} trainedRegion_o {type o_ap_none width 768} IOCheckIdx {type i_ap_none width 8} IORegionIdx {type i_ap_none width 8} n_regions_in_i {type i_ap_none width 8} n_regions_in_o {type o_ap_none width 8} outcomeInRam {type o_ap_memory width 288} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {errorInTask {width 1} outcomeInRam {width 288}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode COR
