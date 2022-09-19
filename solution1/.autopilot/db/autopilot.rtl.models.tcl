set SynModuleInfo {
  {SRCNAME read_test MODELNAME read_test RTLNAME run_read_test}
  {SRCNAME find_region MODELNAME find_region RTLNAME run_find_region
    SUBMODULES {
      {MODELNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME run_test MODELNAME run_test RTLNAME run_run_test}
  {SRCNAME writeOutcome MODELNAME writeOutcome RTLNAME run_writeOutcome}
  {SRCNAME run MODELNAME run RTLNAME run IS_TOP 1
    SUBMODULES {
      {MODELNAME run_data_0_RAM_AUTO_1R1W_memcore RTLNAME run_data_0_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME run_data_0_RAM_AUTO_1R1W RTLNAME run_data_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2}
      {MODELNAME run_fifo_w16_d2_S RTLNAME run_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w16_d3_S RTLNAME run_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w1_d2_S RTLNAME run_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_control_r_s_axi RTLNAME run_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME run_gmem_m_axi RTLNAME run_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
