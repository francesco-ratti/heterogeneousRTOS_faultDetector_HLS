set SynModuleInfo {
  {SRCNAME read_data MODELNAME read_data RTLNAME run_read_data
    SUBMODULES {
      {MODELNAME run_read_data_dest_AOV_RAM_AUTO_1R1W RTLNAME run_read_data_dest_AOV_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME run_test MODELNAME run_test RTLNAME run_run_test
    SUBMODULES {
      {MODELNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME run_mux_84_32_1_1 RTLNAME run_mux_84_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME run_mux_864_32_1_1 RTLNAME run_mux_864_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME run_mux_21_32_1_1 RTLNAME run_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME writeOutcome MODELNAME writeOutcome RTLNAME run_writeOutcome
    SUBMODULES {
      {MODELNAME run_writeOutcome_outcome_AOV_RAM_AUTO_1R1W RTLNAME run_writeOutcome_outcome_AOV_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME runTest MODELNAME runTest RTLNAME run_runTest
    SUBMODULES {
      {MODELNAME run_mux_648_8_1_1 RTLNAME run_mux_648_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME run_runTest_failedTaskExecutionIds_V_RAM_AUTO_1R1W RTLNAME run_runTest_failedTaskExecutionIds_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME run MODELNAME run RTLNAME run IS_TOP 1
    SUBMODULES {
      {MODELNAME run_regions_RAM_AUTO_1R1W RTLNAME run_regions_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME run_gmem_m_axi RTLNAME run_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME run_control_s_axi RTLNAME run_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME run_regslice_forward RTLNAME run_regslice_forward BINDTYPE interface TYPE interface_regslice INSTNAME run_regslice_forward_U}
    }
  }
}
