# This script segment is generated automatically by AutoPilot

set name run_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name run_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name run_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set id 567
set name run_mux_84_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 4
set din8_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
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
    id 572 \
    name regions \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions \
    op interface \
    ports { regions_address0 { O 9 vector } regions_ce0 { O 1 bit } regions_q0 { I 32 vector } regions_address1 { O 9 vector } regions_ce1 { O 1 bit } regions_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 574 \
    name regions_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_2 \
    op interface \
    ports { regions_2_address0 { O 9 vector } regions_2_ce0 { O 1 bit } regions_2_q0 { I 32 vector } regions_2_address1 { O 9 vector } regions_2_ce1 { O 1 bit } regions_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 575 \
    name regions_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_3 \
    op interface \
    ports { regions_3_address0 { O 9 vector } regions_3_ce0 { O 1 bit } regions_3_q0 { I 32 vector } regions_3_address1 { O 9 vector } regions_3_ce1 { O 1 bit } regions_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 576 \
    name regions_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_4 \
    op interface \
    ports { regions_4_address0 { O 9 vector } regions_4_ce0 { O 1 bit } regions_4_q0 { I 32 vector } regions_4_address1 { O 9 vector } regions_4_ce1 { O 1 bit } regions_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 577 \
    name regions_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_5 \
    op interface \
    ports { regions_5_address0 { O 9 vector } regions_5_ce0 { O 1 bit } regions_5_q0 { I 32 vector } regions_5_address1 { O 9 vector } regions_5_ce1 { O 1 bit } regions_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 578 \
    name regions_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_6 \
    op interface \
    ports { regions_6_address0 { O 9 vector } regions_6_ce0 { O 1 bit } regions_6_q0 { I 32 vector } regions_6_address1 { O 9 vector } regions_6_ce1 { O 1 bit } regions_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 579 \
    name regions_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_7 \
    op interface \
    ports { regions_7_address0 { O 9 vector } regions_7_ce0 { O 1 bit } regions_7_q0 { I 32 vector } regions_7_address1 { O 9 vector } regions_7_ce1 { O 1 bit } regions_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 580 \
    name regions_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_8 \
    op interface \
    ports { regions_8_address0 { O 9 vector } regions_8_ce0 { O 1 bit } regions_8_q0 { I 32 vector } regions_8_address1 { O 9 vector } regions_8_ce1 { O 1 bit } regions_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 581 \
    name regions_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_9 \
    op interface \
    ports { regions_9_address0 { O 9 vector } regions_9_ce0 { O 1 bit } regions_9_q0 { I 32 vector } regions_9_address1 { O 9 vector } regions_9_ce1 { O 1 bit } regions_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 582 \
    name regions_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_10 \
    op interface \
    ports { regions_10_address0 { O 9 vector } regions_10_ce0 { O 1 bit } regions_10_q0 { I 32 vector } regions_10_address1 { O 9 vector } regions_10_ce1 { O 1 bit } regions_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 583 \
    name regions_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_11 \
    op interface \
    ports { regions_11_address0 { O 9 vector } regions_11_ce0 { O 1 bit } regions_11_q0 { I 32 vector } regions_11_address1 { O 9 vector } regions_11_ce1 { O 1 bit } regions_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 584 \
    name regions_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_12 \
    op interface \
    ports { regions_12_address0 { O 9 vector } regions_12_ce0 { O 1 bit } regions_12_q0 { I 32 vector } regions_12_address1 { O 9 vector } regions_12_ce1 { O 1 bit } regions_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 585 \
    name regions_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_13 \
    op interface \
    ports { regions_13_address0 { O 9 vector } regions_13_ce0 { O 1 bit } regions_13_q0 { I 32 vector } regions_13_address1 { O 9 vector } regions_13_ce1 { O 1 bit } regions_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 586 \
    name regions_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_14 \
    op interface \
    ports { regions_14_address0 { O 9 vector } regions_14_ce0 { O 1 bit } regions_14_q0 { I 32 vector } regions_14_address1 { O 9 vector } regions_14_ce1 { O 1 bit } regions_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 587 \
    name regions_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_15 \
    op interface \
    ports { regions_15_address0 { O 9 vector } regions_15_ce0 { O 1 bit } regions_15_q0 { I 32 vector } regions_15_address1 { O 9 vector } regions_15_ce1 { O 1 bit } regions_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 588 \
    name regions_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_16 \
    op interface \
    ports { regions_16_address0 { O 9 vector } regions_16_ce0 { O 1 bit } regions_16_q0 { I 32 vector } regions_16_address1 { O 9 vector } regions_16_ce1 { O 1 bit } regions_16_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 589 \
    name regions_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_17 \
    op interface \
    ports { regions_17_address0 { O 9 vector } regions_17_ce0 { O 1 bit } regions_17_q0 { I 32 vector } regions_17_address1 { O 9 vector } regions_17_ce1 { O 1 bit } regions_17_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 590 \
    name regions_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_18 \
    op interface \
    ports { regions_18_address0 { O 9 vector } regions_18_ce0 { O 1 bit } regions_18_q0 { I 32 vector } regions_18_address1 { O 9 vector } regions_18_ce1 { O 1 bit } regions_18_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 591 \
    name regions_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_19 \
    op interface \
    ports { regions_19_address0 { O 9 vector } regions_19_ce0 { O 1 bit } regions_19_q0 { I 32 vector } regions_19_address1 { O 9 vector } regions_19_ce1 { O 1 bit } regions_19_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 592 \
    name regions_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_20 \
    op interface \
    ports { regions_20_address0 { O 9 vector } regions_20_ce0 { O 1 bit } regions_20_q0 { I 32 vector } regions_20_address1 { O 9 vector } regions_20_ce1 { O 1 bit } regions_20_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 593 \
    name regions_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_21 \
    op interface \
    ports { regions_21_address0 { O 9 vector } regions_21_ce0 { O 1 bit } regions_21_q0 { I 32 vector } regions_21_address1 { O 9 vector } regions_21_ce1 { O 1 bit } regions_21_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 594 \
    name regions_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_22 \
    op interface \
    ports { regions_22_address0 { O 9 vector } regions_22_ce0 { O 1 bit } regions_22_q0 { I 32 vector } regions_22_address1 { O 9 vector } regions_22_ce1 { O 1 bit } regions_22_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 595 \
    name regions_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_23 \
    op interface \
    ports { regions_23_address0 { O 9 vector } regions_23_ce0 { O 1 bit } regions_23_q0 { I 32 vector } regions_23_address1 { O 9 vector } regions_23_ce1 { O 1 bit } regions_23_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 596 \
    name regions_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_24 \
    op interface \
    ports { regions_24_address0 { O 9 vector } regions_24_ce0 { O 1 bit } regions_24_q0 { I 32 vector } regions_24_address1 { O 9 vector } regions_24_ce1 { O 1 bit } regions_24_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 597 \
    name regions_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_25 \
    op interface \
    ports { regions_25_address0 { O 9 vector } regions_25_ce0 { O 1 bit } regions_25_q0 { I 32 vector } regions_25_address1 { O 9 vector } regions_25_ce1 { O 1 bit } regions_25_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 598 \
    name regions_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_26 \
    op interface \
    ports { regions_26_address0 { O 9 vector } regions_26_ce0 { O 1 bit } regions_26_q0 { I 32 vector } regions_26_address1 { O 9 vector } regions_26_ce1 { O 1 bit } regions_26_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 599 \
    name regions_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_27 \
    op interface \
    ports { regions_27_address0 { O 9 vector } regions_27_ce0 { O 1 bit } regions_27_q0 { I 32 vector } regions_27_address1 { O 9 vector } regions_27_ce1 { O 1 bit } regions_27_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 600 \
    name regions_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_28 \
    op interface \
    ports { regions_28_address0 { O 9 vector } regions_28_ce0 { O 1 bit } regions_28_q0 { I 32 vector } regions_28_address1 { O 9 vector } regions_28_ce1 { O 1 bit } regions_28_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 601 \
    name regions_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_29 \
    op interface \
    ports { regions_29_address0 { O 9 vector } regions_29_ce0 { O 1 bit } regions_29_q0 { I 32 vector } regions_29_address1 { O 9 vector } regions_29_ce1 { O 1 bit } regions_29_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 602 \
    name regions_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_30 \
    op interface \
    ports { regions_30_address0 { O 9 vector } regions_30_ce0 { O 1 bit } regions_30_q0 { I 32 vector } regions_30_address1 { O 9 vector } regions_30_ce1 { O 1 bit } regions_30_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 603 \
    name regions_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_31 \
    op interface \
    ports { regions_31_address0 { O 9 vector } regions_31_ce0 { O 1 bit } regions_31_q0 { I 32 vector } regions_31_address1 { O 9 vector } regions_31_ce1 { O 1 bit } regions_31_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 604 \
    name regions_32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_32 \
    op interface \
    ports { regions_32_address0 { O 9 vector } regions_32_ce0 { O 1 bit } regions_32_q0 { I 32 vector } regions_32_address1 { O 9 vector } regions_32_ce1 { O 1 bit } regions_32_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 605 \
    name regions_33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_33 \
    op interface \
    ports { regions_33_address0 { O 9 vector } regions_33_ce0 { O 1 bit } regions_33_q0 { I 32 vector } regions_33_address1 { O 9 vector } regions_33_ce1 { O 1 bit } regions_33_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 606 \
    name regions_34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_34 \
    op interface \
    ports { regions_34_address0 { O 9 vector } regions_34_ce0 { O 1 bit } regions_34_q0 { I 32 vector } regions_34_address1 { O 9 vector } regions_34_ce1 { O 1 bit } regions_34_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 607 \
    name regions_35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_35 \
    op interface \
    ports { regions_35_address0 { O 9 vector } regions_35_ce0 { O 1 bit } regions_35_q0 { I 32 vector } regions_35_address1 { O 9 vector } regions_35_ce1 { O 1 bit } regions_35_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 608 \
    name regions_36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_36 \
    op interface \
    ports { regions_36_address0 { O 9 vector } regions_36_ce0 { O 1 bit } regions_36_q0 { I 32 vector } regions_36_address1 { O 9 vector } regions_36_ce1 { O 1 bit } regions_36_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 609 \
    name regions_37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_37 \
    op interface \
    ports { regions_37_address0 { O 9 vector } regions_37_ce0 { O 1 bit } regions_37_q0 { I 32 vector } regions_37_address1 { O 9 vector } regions_37_ce1 { O 1 bit } regions_37_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 610 \
    name regions_38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_38 \
    op interface \
    ports { regions_38_address0 { O 9 vector } regions_38_ce0 { O 1 bit } regions_38_q0 { I 32 vector } regions_38_address1 { O 9 vector } regions_38_ce1 { O 1 bit } regions_38_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 611 \
    name regions_39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_39 \
    op interface \
    ports { regions_39_address0 { O 9 vector } regions_39_ce0 { O 1 bit } regions_39_q0 { I 32 vector } regions_39_address1 { O 9 vector } regions_39_ce1 { O 1 bit } regions_39_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 612 \
    name regions_40 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_40 \
    op interface \
    ports { regions_40_address0 { O 9 vector } regions_40_ce0 { O 1 bit } regions_40_q0 { I 32 vector } regions_40_address1 { O 9 vector } regions_40_ce1 { O 1 bit } regions_40_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 613 \
    name regions_41 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_41 \
    op interface \
    ports { regions_41_address0 { O 9 vector } regions_41_ce0 { O 1 bit } regions_41_q0 { I 32 vector } regions_41_address1 { O 9 vector } regions_41_ce1 { O 1 bit } regions_41_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 614 \
    name regions_42 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_42 \
    op interface \
    ports { regions_42_address0 { O 9 vector } regions_42_ce0 { O 1 bit } regions_42_q0 { I 32 vector } regions_42_address1 { O 9 vector } regions_42_ce1 { O 1 bit } regions_42_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 615 \
    name regions_43 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_43 \
    op interface \
    ports { regions_43_address0 { O 9 vector } regions_43_ce0 { O 1 bit } regions_43_q0 { I 32 vector } regions_43_address1 { O 9 vector } regions_43_ce1 { O 1 bit } regions_43_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 616 \
    name regions_44 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_44 \
    op interface \
    ports { regions_44_address0 { O 9 vector } regions_44_ce0 { O 1 bit } regions_44_q0 { I 32 vector } regions_44_address1 { O 9 vector } regions_44_ce1 { O 1 bit } regions_44_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 617 \
    name regions_45 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_45 \
    op interface \
    ports { regions_45_address0 { O 9 vector } regions_45_ce0 { O 1 bit } regions_45_q0 { I 32 vector } regions_45_address1 { O 9 vector } regions_45_ce1 { O 1 bit } regions_45_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 618 \
    name regions_46 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_46 \
    op interface \
    ports { regions_46_address0 { O 9 vector } regions_46_ce0 { O 1 bit } regions_46_q0 { I 32 vector } regions_46_address1 { O 9 vector } regions_46_ce1 { O 1 bit } regions_46_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 619 \
    name regions_47 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_47 \
    op interface \
    ports { regions_47_address0 { O 9 vector } regions_47_ce0 { O 1 bit } regions_47_q0 { I 32 vector } regions_47_address1 { O 9 vector } regions_47_ce1 { O 1 bit } regions_47_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 620 \
    name regions_48 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_48 \
    op interface \
    ports { regions_48_address0 { O 9 vector } regions_48_ce0 { O 1 bit } regions_48_q0 { I 32 vector } regions_48_address1 { O 9 vector } regions_48_ce1 { O 1 bit } regions_48_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_48'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 573 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 621 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 622 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 623 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 624 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 625 \
    name p_read6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read6 \
    op interface \
    ports { p_read6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 626 \
    name p_read7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read7 \
    op interface \
    ports { p_read7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 627 \
    name p_read8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read8 \
    op interface \
    ports { p_read8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 628 \
    name p_read9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read9 \
    op interface \
    ports { p_read9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 629 \
    name p_read10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read10 \
    op interface \
    ports { p_read10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 630 \
    name data_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_c \
    op interface \
    ports { data_c_din { O 32 vector } data_c_num_data_valid { I 2 vector } data_c_fifo_cap { I 2 vector } data_c_full_n { I 1 bit } data_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 631 \
    name data_1_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_1_c \
    op interface \
    ports { data_1_c_din { O 32 vector } data_1_c_num_data_valid { I 2 vector } data_1_c_fifo_cap { I 2 vector } data_1_c_full_n { I 1 bit } data_1_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 632 \
    name data_2_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_2_c \
    op interface \
    ports { data_2_c_din { O 32 vector } data_2_c_num_data_valid { I 2 vector } data_2_c_fifo_cap { I 2 vector } data_2_c_full_n { I 1 bit } data_2_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 633 \
    name data_3_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_3_c \
    op interface \
    ports { data_3_c_din { O 32 vector } data_3_c_num_data_valid { I 2 vector } data_3_c_fifo_cap { I 2 vector } data_3_c_full_n { I 1 bit } data_3_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 634 \
    name data_4_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_4_c \
    op interface \
    ports { data_4_c_din { O 32 vector } data_4_c_num_data_valid { I 2 vector } data_4_c_fifo_cap { I 2 vector } data_4_c_full_n { I 1 bit } data_4_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 635 \
    name data_5_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_5_c \
    op interface \
    ports { data_5_c_din { O 32 vector } data_5_c_num_data_valid { I 2 vector } data_5_c_fifo_cap { I 2 vector } data_5_c_full_n { I 1 bit } data_5_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 636 \
    name data_6_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_6_c \
    op interface \
    ports { data_6_c_din { O 32 vector } data_6_c_num_data_valid { I 2 vector } data_6_c_fifo_cap { I 2 vector } data_6_c_full_n { I 1 bit } data_6_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 637 \
    name data_7_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_7_c \
    op interface \
    ports { data_7_c_din { O 32 vector } data_7_c_num_data_valid { I 2 vector } data_7_c_fifo_cap { I 2 vector } data_7_c_full_n { I 1 bit } data_7_c_write { O 1 bit } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


