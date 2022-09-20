set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME run_entry_proc}
  {SRCNAME read_test MODELNAME read_test RTLNAME run_read_test}
  {SRCNAME find_region MODELNAME find_region RTLNAME run_find_region
    SUBMODULES {
      {MODELNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME run_test MODELNAME run_test RTLNAME run_run_test
    SUBMODULES {
      {MODELNAME run_fcmp_32ns_32ns_1_2_no_dsp_1_x RTLNAME run_fcmp_32ns_32ns_1_2_no_dsp_1_x BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME writeOutcome MODELNAME writeOutcome RTLNAME run_writeOutcome}
  {SRCNAME runTestAfterInit MODELNAME runTestAfterInit RTLNAME run_runTestAfterInit
    SUBMODULES {
      {MODELNAME run_runTestAfterInit_run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_bkb_memcore RTLNAME run_runTestAfterInit_run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_bkb_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME run_runTestAfterInit_run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_bkb RTLNAME run_runTestAfterInit_run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_data_bkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME run_fifo_w64_d14_S RTLNAME run_fifo_w64_d14_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w16_d2_S RTLNAME run_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w16_d5_S RTLNAME run_fifo_w16_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w1_d2_S RTLNAME run_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME run MODELNAME run RTLNAME run IS_TOP 1
    SUBMODULES {
      {MODELNAME run_gmem_m_axi RTLNAME run_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME run_control_s_axi RTLNAME run_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME run_regslice_both RTLNAME run_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME run_regslice_both_U}
    }
  }
}
