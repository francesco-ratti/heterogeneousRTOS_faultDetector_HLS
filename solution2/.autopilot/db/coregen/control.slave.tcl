dict set slaves control {ports {t {type x_ap_memory width 32} errorInTask {type io_ap_memory width 1} n_regions_in {type i_ap_memory width 8} outcomeInRam {type o_ap_memory width 288} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_continue {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1} trainedRegions {type i_ap_memory width 32}} mems {t {width 32} errorInTask {width 1} n_regions_in {width 8} outcomeInRam {width 288} trainedRegions {width 32}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode COR