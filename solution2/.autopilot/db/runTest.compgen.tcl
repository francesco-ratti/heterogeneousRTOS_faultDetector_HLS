# This script segment is generated automatically by AutoPilot

# FIFO definition: 
set ID 126
set FifoName run_fifo_w320_d1_S
set InstName copyDest_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 1
set DataWd 320
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 1
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 127
set FifoName run_fifo_w288_d1_S
set InstName outcomeStream_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 1
set DataWd 288
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 1
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name regions \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions \
    op interface \
    ports { regions_address0 { O 12 vector } regions_ce0 { O 1 bit } regions_d0 { O 32 vector } regions_q0 { I 32 vector } regions_we0 { O 1 bit } regions_address1 { O 12 vector } regions_ce1 { O 1 bit } regions_d1 { O 32 vector } regions_q1 { I 32 vector } regions_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 197 \
    name regions_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_1 \
    op interface \
    ports { regions_1_address0 { O 12 vector } regions_1_ce0 { O 1 bit } regions_1_d0 { O 32 vector } regions_1_q0 { I 32 vector } regions_1_we0 { O 1 bit } regions_1_address1 { O 12 vector } regions_1_ce1 { O 1 bit } regions_1_d1 { O 32 vector } regions_1_q1 { I 32 vector } regions_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 198 \
    name regions_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_2 \
    op interface \
    ports { regions_2_address0 { O 12 vector } regions_2_ce0 { O 1 bit } regions_2_d0 { O 32 vector } regions_2_q0 { I 32 vector } regions_2_we0 { O 1 bit } regions_2_address1 { O 12 vector } regions_2_ce1 { O 1 bit } regions_2_d1 { O 32 vector } regions_2_q1 { I 32 vector } regions_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name regions_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_3 \
    op interface \
    ports { regions_3_address0 { O 12 vector } regions_3_ce0 { O 1 bit } regions_3_d0 { O 32 vector } regions_3_q0 { I 32 vector } regions_3_we0 { O 1 bit } regions_3_address1 { O 12 vector } regions_3_ce1 { O 1 bit } regions_3_d1 { O 32 vector } regions_3_q1 { I 32 vector } regions_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name gmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 512 vector } m_axi_gmem_WSTRB { O 64 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 512 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RFIFONUM { I 9 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name inputAOV \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inputAOV \
    op interface \
    ports { inputAOV { I 64 vector } inputAOV_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name startCopy \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_startCopy \
    op interface \
    ports { startCopy { I 8 vector } startCopy_ap_vld { I 1 bit } startCopy_ap_ack { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name copying \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_copying \
    op interface \
    ports { copying { O 8 vector } copying_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name p_ZL9n_regions_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_0 \
    op interface \
    ports { p_ZL9n_regions_0 { I 8 vector } p_ZL9n_regions_0_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name p_ZL9n_regions_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_1 \
    op interface \
    ports { p_ZL9n_regions_1 { I 8 vector } p_ZL9n_regions_1_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name p_ZL9n_regions_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_2 \
    op interface \
    ports { p_ZL9n_regions_2 { I 8 vector } p_ZL9n_regions_2_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name p_ZL9n_regions_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_3 \
    op interface \
    ports { p_ZL9n_regions_3 { I 8 vector } p_ZL9n_regions_3_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name p_ZL9n_regions_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_4 \
    op interface \
    ports { p_ZL9n_regions_4 { I 8 vector } p_ZL9n_regions_4_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name p_ZL9n_regions_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_5 \
    op interface \
    ports { p_ZL9n_regions_5 { I 8 vector } p_ZL9n_regions_5_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name p_ZL9n_regions_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_6 \
    op interface \
    ports { p_ZL9n_regions_6 { I 8 vector } p_ZL9n_regions_6_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name p_ZL9n_regions_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_7 \
    op interface \
    ports { p_ZL9n_regions_7 { I 8 vector } p_ZL9n_regions_7_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name p_ZL9n_regions_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_8 \
    op interface \
    ports { p_ZL9n_regions_8 { I 8 vector } p_ZL9n_regions_8_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name p_ZL9n_regions_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_9 \
    op interface \
    ports { p_ZL9n_regions_9 { I 8 vector } p_ZL9n_regions_9_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name p_ZL9n_regions_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_10 \
    op interface \
    ports { p_ZL9n_regions_10 { I 8 vector } p_ZL9n_regions_10_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name p_ZL9n_regions_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_11 \
    op interface \
    ports { p_ZL9n_regions_11 { I 8 vector } p_ZL9n_regions_11_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name p_ZL9n_regions_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_12 \
    op interface \
    ports { p_ZL9n_regions_12 { I 8 vector } p_ZL9n_regions_12_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name p_ZL9n_regions_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_13 \
    op interface \
    ports { p_ZL9n_regions_13 { I 8 vector } p_ZL9n_regions_13_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name p_ZL9n_regions_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_14 \
    op interface \
    ports { p_ZL9n_regions_14 { I 8 vector } p_ZL9n_regions_14_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name p_ZL9n_regions_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_15 \
    op interface \
    ports { p_ZL9n_regions_15 { I 8 vector } p_ZL9n_regions_15_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name p_ZL9n_regions_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_16 \
    op interface \
    ports { p_ZL9n_regions_16 { I 8 vector } p_ZL9n_regions_16_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name p_ZL9n_regions_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_17 \
    op interface \
    ports { p_ZL9n_regions_17 { I 8 vector } p_ZL9n_regions_17_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name p_ZL9n_regions_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_18 \
    op interface \
    ports { p_ZL9n_regions_18 { I 8 vector } p_ZL9n_regions_18_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name p_ZL9n_regions_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_19 \
    op interface \
    ports { p_ZL9n_regions_19 { I 8 vector } p_ZL9n_regions_19_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name p_ZL9n_regions_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_20 \
    op interface \
    ports { p_ZL9n_regions_20 { I 8 vector } p_ZL9n_regions_20_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name p_ZL9n_regions_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_21 \
    op interface \
    ports { p_ZL9n_regions_21 { I 8 vector } p_ZL9n_regions_21_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name p_ZL9n_regions_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_22 \
    op interface \
    ports { p_ZL9n_regions_22 { I 8 vector } p_ZL9n_regions_22_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name p_ZL9n_regions_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_23 \
    op interface \
    ports { p_ZL9n_regions_23 { I 8 vector } p_ZL9n_regions_23_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name p_ZL9n_regions_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_24 \
    op interface \
    ports { p_ZL9n_regions_24 { I 8 vector } p_ZL9n_regions_24_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name p_ZL9n_regions_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_25 \
    op interface \
    ports { p_ZL9n_regions_25 { I 8 vector } p_ZL9n_regions_25_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name p_ZL9n_regions_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_26 \
    op interface \
    ports { p_ZL9n_regions_26 { I 8 vector } p_ZL9n_regions_26_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name p_ZL9n_regions_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_27 \
    op interface \
    ports { p_ZL9n_regions_27 { I 8 vector } p_ZL9n_regions_27_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name p_ZL9n_regions_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_28 \
    op interface \
    ports { p_ZL9n_regions_28 { I 8 vector } p_ZL9n_regions_28_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name p_ZL9n_regions_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_29 \
    op interface \
    ports { p_ZL9n_regions_29 { I 8 vector } p_ZL9n_regions_29_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name p_ZL9n_regions_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_30 \
    op interface \
    ports { p_ZL9n_regions_30 { I 8 vector } p_ZL9n_regions_30_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name p_ZL9n_regions_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_31 \
    op interface \
    ports { p_ZL9n_regions_31 { I 8 vector } p_ZL9n_regions_31_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name p_ZL9n_regions_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_32 \
    op interface \
    ports { p_ZL9n_regions_32 { I 8 vector } p_ZL9n_regions_32_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name p_ZL9n_regions_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_33 \
    op interface \
    ports { p_ZL9n_regions_33 { I 8 vector } p_ZL9n_regions_33_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name p_ZL9n_regions_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_34 \
    op interface \
    ports { p_ZL9n_regions_34 { I 8 vector } p_ZL9n_regions_34_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name p_ZL9n_regions_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_35 \
    op interface \
    ports { p_ZL9n_regions_35 { I 8 vector } p_ZL9n_regions_35_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name p_ZL9n_regions_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_36 \
    op interface \
    ports { p_ZL9n_regions_36 { I 8 vector } p_ZL9n_regions_36_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name p_ZL9n_regions_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_37 \
    op interface \
    ports { p_ZL9n_regions_37 { I 8 vector } p_ZL9n_regions_37_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name p_ZL9n_regions_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_38 \
    op interface \
    ports { p_ZL9n_regions_38 { I 8 vector } p_ZL9n_regions_38_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name p_ZL9n_regions_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_39 \
    op interface \
    ports { p_ZL9n_regions_39 { I 8 vector } p_ZL9n_regions_39_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name p_ZL9n_regions_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_40 \
    op interface \
    ports { p_ZL9n_regions_40 { I 8 vector } p_ZL9n_regions_40_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name p_ZL9n_regions_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_41 \
    op interface \
    ports { p_ZL9n_regions_41 { I 8 vector } p_ZL9n_regions_41_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name p_ZL9n_regions_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_42 \
    op interface \
    ports { p_ZL9n_regions_42 { I 8 vector } p_ZL9n_regions_42_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name p_ZL9n_regions_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_43 \
    op interface \
    ports { p_ZL9n_regions_43 { I 8 vector } p_ZL9n_regions_43_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name p_ZL9n_regions_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_44 \
    op interface \
    ports { p_ZL9n_regions_44 { I 8 vector } p_ZL9n_regions_44_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name p_ZL9n_regions_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_45 \
    op interface \
    ports { p_ZL9n_regions_45 { I 8 vector } p_ZL9n_regions_45_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name p_ZL9n_regions_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_46 \
    op interface \
    ports { p_ZL9n_regions_46 { I 8 vector } p_ZL9n_regions_46_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name p_ZL9n_regions_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_47 \
    op interface \
    ports { p_ZL9n_regions_47 { I 8 vector } p_ZL9n_regions_47_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name p_ZL9n_regions_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_48 \
    op interface \
    ports { p_ZL9n_regions_48 { I 8 vector } p_ZL9n_regions_48_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name p_ZL9n_regions_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_49 \
    op interface \
    ports { p_ZL9n_regions_49 { I 8 vector } p_ZL9n_regions_49_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name p_ZL9n_regions_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_50 \
    op interface \
    ports { p_ZL9n_regions_50 { I 8 vector } p_ZL9n_regions_50_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name p_ZL9n_regions_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_51 \
    op interface \
    ports { p_ZL9n_regions_51 { I 8 vector } p_ZL9n_regions_51_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name p_ZL9n_regions_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_52 \
    op interface \
    ports { p_ZL9n_regions_52 { I 8 vector } p_ZL9n_regions_52_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name p_ZL9n_regions_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_53 \
    op interface \
    ports { p_ZL9n_regions_53 { I 8 vector } p_ZL9n_regions_53_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name p_ZL9n_regions_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_54 \
    op interface \
    ports { p_ZL9n_regions_54 { I 8 vector } p_ZL9n_regions_54_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name p_ZL9n_regions_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_55 \
    op interface \
    ports { p_ZL9n_regions_55 { I 8 vector } p_ZL9n_regions_55_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name p_ZL9n_regions_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_56 \
    op interface \
    ports { p_ZL9n_regions_56 { I 8 vector } p_ZL9n_regions_56_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name p_ZL9n_regions_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_57 \
    op interface \
    ports { p_ZL9n_regions_57 { I 8 vector } p_ZL9n_regions_57_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name p_ZL9n_regions_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_58 \
    op interface \
    ports { p_ZL9n_regions_58 { I 8 vector } p_ZL9n_regions_58_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name p_ZL9n_regions_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_59 \
    op interface \
    ports { p_ZL9n_regions_59 { I 8 vector } p_ZL9n_regions_59_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name p_ZL9n_regions_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_60 \
    op interface \
    ports { p_ZL9n_regions_60 { I 8 vector } p_ZL9n_regions_60_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name p_ZL9n_regions_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_61 \
    op interface \
    ports { p_ZL9n_regions_61 { I 8 vector } p_ZL9n_regions_61_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name p_ZL9n_regions_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_62 \
    op interface \
    ports { p_ZL9n_regions_62 { I 8 vector } p_ZL9n_regions_62_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name p_ZL9n_regions_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_63 \
    op interface \
    ports { p_ZL9n_regions_63 { I 8 vector } p_ZL9n_regions_63_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


