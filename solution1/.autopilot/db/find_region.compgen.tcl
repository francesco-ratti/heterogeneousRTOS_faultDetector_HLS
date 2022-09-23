# This script segment is generated automatically by AutoPilot

set name run_fsub_32ns_32ns_32_4_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fsub} IMPL {fulldsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name run_fdiv_32ns_32ns_32_9_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fdiv} IMPL {fabric} LATENCY 8 ALLOW_PRAGMA 1
}


set name run_fcmp_32ns_32ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
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
    id 35 \
    name regions_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_0_0 \
    op interface \
    ports { regions_0_0_address0 { O 9 vector } regions_0_0_ce0 { O 1 bit } regions_0_0_q0 { I 32 vector } regions_0_0_address1 { O 9 vector } regions_0_0_ce1 { O 1 bit } regions_0_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name regions_0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_0_1 \
    op interface \
    ports { regions_0_1_address0 { O 9 vector } regions_0_1_ce0 { O 1 bit } regions_0_1_q0 { I 32 vector } regions_0_1_address1 { O 9 vector } regions_0_1_ce1 { O 1 bit } regions_0_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name regions_0_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_0_2 \
    op interface \
    ports { regions_0_2_address0 { O 9 vector } regions_0_2_ce0 { O 1 bit } regions_0_2_q0 { I 32 vector } regions_0_2_address1 { O 9 vector } regions_0_2_ce1 { O 1 bit } regions_0_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name regions_1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_1_0 \
    op interface \
    ports { regions_1_0_address0 { O 9 vector } regions_1_0_ce0 { O 1 bit } regions_1_0_q0 { I 32 vector } regions_1_0_address1 { O 9 vector } regions_1_0_ce1 { O 1 bit } regions_1_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name regions_1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_1_1 \
    op interface \
    ports { regions_1_1_address0 { O 9 vector } regions_1_1_ce0 { O 1 bit } regions_1_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name regions_1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_1_2 \
    op interface \
    ports { regions_1_2_address0 { O 9 vector } regions_1_2_ce0 { O 1 bit } regions_1_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name regions_2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_2_0 \
    op interface \
    ports { regions_2_0_address0 { O 9 vector } regions_2_0_ce0 { O 1 bit } regions_2_0_q0 { I 32 vector } regions_2_0_address1 { O 9 vector } regions_2_0_ce1 { O 1 bit } regions_2_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name regions_2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_2_1 \
    op interface \
    ports { regions_2_1_address0 { O 9 vector } regions_2_1_ce0 { O 1 bit } regions_2_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name regions_2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_2_2 \
    op interface \
    ports { regions_2_2_address0 { O 9 vector } regions_2_2_ce0 { O 1 bit } regions_2_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name regions_3_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_3_0 \
    op interface \
    ports { regions_3_0_address0 { O 9 vector } regions_3_0_ce0 { O 1 bit } regions_3_0_q0 { I 32 vector } regions_3_0_address1 { O 9 vector } regions_3_0_ce1 { O 1 bit } regions_3_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name regions_3_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_3_1 \
    op interface \
    ports { regions_3_1_address0 { O 9 vector } regions_3_1_ce0 { O 1 bit } regions_3_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name regions_3_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_3_2 \
    op interface \
    ports { regions_3_2_address0 { O 9 vector } regions_3_2_ce0 { O 1 bit } regions_3_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name regions_4_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_4_0 \
    op interface \
    ports { regions_4_0_address0 { O 9 vector } regions_4_0_ce0 { O 1 bit } regions_4_0_q0 { I 32 vector } regions_4_0_address1 { O 9 vector } regions_4_0_ce1 { O 1 bit } regions_4_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name regions_4_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_4_1 \
    op interface \
    ports { regions_4_1_address0 { O 9 vector } regions_4_1_ce0 { O 1 bit } regions_4_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name regions_4_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_4_2 \
    op interface \
    ports { regions_4_2_address0 { O 9 vector } regions_4_2_ce0 { O 1 bit } regions_4_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_4_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name regions_5_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_5_0 \
    op interface \
    ports { regions_5_0_address0 { O 9 vector } regions_5_0_ce0 { O 1 bit } regions_5_0_q0 { I 32 vector } regions_5_0_address1 { O 9 vector } regions_5_0_ce1 { O 1 bit } regions_5_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_5_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name regions_5_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_5_1 \
    op interface \
    ports { regions_5_1_address0 { O 9 vector } regions_5_1_ce0 { O 1 bit } regions_5_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_5_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 53 \
    name regions_5_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_5_2 \
    op interface \
    ports { regions_5_2_address0 { O 9 vector } regions_5_2_ce0 { O 1 bit } regions_5_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_5_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name regions_6_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_6_0 \
    op interface \
    ports { regions_6_0_address0 { O 9 vector } regions_6_0_ce0 { O 1 bit } regions_6_0_q0 { I 32 vector } regions_6_0_address1 { O 9 vector } regions_6_0_ce1 { O 1 bit } regions_6_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_6_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name regions_6_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_6_1 \
    op interface \
    ports { regions_6_1_address0 { O 9 vector } regions_6_1_ce0 { O 1 bit } regions_6_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_6_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name regions_6_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_6_2 \
    op interface \
    ports { regions_6_2_address0 { O 9 vector } regions_6_2_ce0 { O 1 bit } regions_6_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_6_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name regions_7_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_7_0 \
    op interface \
    ports { regions_7_0_address0 { O 9 vector } regions_7_0_ce0 { O 1 bit } regions_7_0_q0 { I 32 vector } regions_7_0_address1 { O 9 vector } regions_7_0_ce1 { O 1 bit } regions_7_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_7_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name regions_7_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_7_1 \
    op interface \
    ports { regions_7_1_address0 { O 9 vector } regions_7_1_ce0 { O 1 bit } regions_7_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_7_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name regions_7_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_7_2 \
    op interface \
    ports { regions_7_2_address0 { O 9 vector } regions_7_2_ce0 { O 1 bit } regions_7_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_7_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name regions_8_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_8_0 \
    op interface \
    ports { regions_8_0_address0 { O 9 vector } regions_8_0_ce0 { O 1 bit } regions_8_0_q0 { I 32 vector } regions_8_0_address1 { O 9 vector } regions_8_0_ce1 { O 1 bit } regions_8_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_8_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
    name regions_8_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_8_1 \
    op interface \
    ports { regions_8_1_address0 { O 9 vector } regions_8_1_ce0 { O 1 bit } regions_8_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_8_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name regions_8_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_8_2 \
    op interface \
    ports { regions_8_2_address0 { O 9 vector } regions_8_2_ce0 { O 1 bit } regions_8_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_8_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name regions_9_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_9_0 \
    op interface \
    ports { regions_9_0_address0 { O 9 vector } regions_9_0_ce0 { O 1 bit } regions_9_0_q0 { I 32 vector } regions_9_0_address1 { O 9 vector } regions_9_0_ce1 { O 1 bit } regions_9_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_9_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name regions_9_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_9_1 \
    op interface \
    ports { regions_9_1_address0 { O 9 vector } regions_9_1_ce0 { O 1 bit } regions_9_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_9_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name regions_9_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_9_2 \
    op interface \
    ports { regions_9_2_address0 { O 9 vector } regions_9_2_ce0 { O 1 bit } regions_9_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_9_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name regions_10_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_10_0 \
    op interface \
    ports { regions_10_0_address0 { O 9 vector } regions_10_0_ce0 { O 1 bit } regions_10_0_q0 { I 32 vector } regions_10_0_address1 { O 9 vector } regions_10_0_ce1 { O 1 bit } regions_10_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_10_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name regions_10_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_10_1 \
    op interface \
    ports { regions_10_1_address0 { O 9 vector } regions_10_1_ce0 { O 1 bit } regions_10_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_10_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name regions_10_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_10_2 \
    op interface \
    ports { regions_10_2_address0 { O 9 vector } regions_10_2_ce0 { O 1 bit } regions_10_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_10_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name regions_11_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_11_0 \
    op interface \
    ports { regions_11_0_address0 { O 9 vector } regions_11_0_ce0 { O 1 bit } regions_11_0_q0 { I 32 vector } regions_11_0_address1 { O 9 vector } regions_11_0_ce1 { O 1 bit } regions_11_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_11_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name regions_11_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_11_1 \
    op interface \
    ports { regions_11_1_address0 { O 9 vector } regions_11_1_ce0 { O 1 bit } regions_11_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_11_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name regions_11_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_11_2 \
    op interface \
    ports { regions_11_2_address0 { O 9 vector } regions_11_2_ce0 { O 1 bit } regions_11_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_11_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name regions_12_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_12_0 \
    op interface \
    ports { regions_12_0_address0 { O 9 vector } regions_12_0_ce0 { O 1 bit } regions_12_0_q0 { I 32 vector } regions_12_0_address1 { O 9 vector } regions_12_0_ce1 { O 1 bit } regions_12_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_12_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name regions_12_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_12_1 \
    op interface \
    ports { regions_12_1_address0 { O 9 vector } regions_12_1_ce0 { O 1 bit } regions_12_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_12_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 74 \
    name regions_12_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_12_2 \
    op interface \
    ports { regions_12_2_address0 { O 9 vector } regions_12_2_ce0 { O 1 bit } regions_12_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_12_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 75 \
    name regions_13_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_13_0 \
    op interface \
    ports { regions_13_0_address0 { O 9 vector } regions_13_0_ce0 { O 1 bit } regions_13_0_q0 { I 32 vector } regions_13_0_address1 { O 9 vector } regions_13_0_ce1 { O 1 bit } regions_13_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_13_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 76 \
    name regions_13_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_13_1 \
    op interface \
    ports { regions_13_1_address0 { O 9 vector } regions_13_1_ce0 { O 1 bit } regions_13_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_13_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name regions_13_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_13_2 \
    op interface \
    ports { regions_13_2_address0 { O 9 vector } regions_13_2_ce0 { O 1 bit } regions_13_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_13_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 78 \
    name regions_14_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_14_0 \
    op interface \
    ports { regions_14_0_address0 { O 9 vector } regions_14_0_ce0 { O 1 bit } regions_14_0_q0 { I 32 vector } regions_14_0_address1 { O 9 vector } regions_14_0_ce1 { O 1 bit } regions_14_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_14_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
    name regions_14_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_14_1 \
    op interface \
    ports { regions_14_1_address0 { O 9 vector } regions_14_1_ce0 { O 1 bit } regions_14_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_14_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name regions_14_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_14_2 \
    op interface \
    ports { regions_14_2_address0 { O 9 vector } regions_14_2_ce0 { O 1 bit } regions_14_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_14_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 81 \
    name regions_15_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_15_0 \
    op interface \
    ports { regions_15_0_address0 { O 9 vector } regions_15_0_ce0 { O 1 bit } regions_15_0_q0 { I 32 vector } regions_15_0_address1 { O 9 vector } regions_15_0_ce1 { O 1 bit } regions_15_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_15_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 82 \
    name regions_15_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_15_1 \
    op interface \
    ports { regions_15_1_address0 { O 9 vector } regions_15_1_ce0 { O 1 bit } regions_15_1_q0 { I 32 vector } regions_15_1_address1 { O 9 vector } regions_15_1_ce1 { O 1 bit } regions_15_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_15_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 83 \
    name regions_15_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename regions_15_2 \
    op interface \
    ports { regions_15_2_address0 { O 9 vector } regions_15_2_ce0 { O 1 bit } regions_15_2_q0 { I 32 vector } regions_15_2_address1 { O 9 vector } regions_15_2_ce1 { O 1 bit } regions_15_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_15_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name regions_0_0_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_regions_0_0_offset \
    op interface \
    ports { regions_0_0_offset { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name n_regions \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n_regions \
    op interface \
    ports { n_regions { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
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
    id 89 \
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
    id 90 \
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
    id 91 \
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
    id 92 \
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
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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
    ports { ap_return { O 5 vector } } \
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


