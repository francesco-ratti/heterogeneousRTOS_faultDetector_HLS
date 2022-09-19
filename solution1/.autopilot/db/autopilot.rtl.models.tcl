set SynModuleInfo {
  {SRCNAME run_Pipeline_1 MODELNAME run_Pipeline_1 RTLNAME run_run_Pipeline_1
    SUBMODULES {
      {MODELNAME run_flow_control_loop_pipe_sequential_init RTLNAME run_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME run_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME run_Pipeline_2 MODELNAME run_Pipeline_2 RTLNAME run_run_Pipeline_2
    SUBMODULES {
      {MODELNAME run_run_Pipeline_2_data_0_RAM_AUTO_0R0W RTLNAME run_run_Pipeline_2_data_0_RAM_AUTO_0R0W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME run_Pipeline_VITIS_LOOP_64_1 MODELNAME run_Pipeline_VITIS_LOOP_64_1 RTLNAME run_run_Pipeline_VITIS_LOOP_64_1
    SUBMODULES {
      {MODELNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME writeOutcomeInRam MODELNAME writeOutcomeInRam RTLNAME run_writeOutcomeInRam}
  {SRCNAME run MODELNAME run RTLNAME run IS_TOP 1
    SUBMODULES {
      {MODELNAME run_n_regions_V_RAM_AUTO_1R1W RTLNAME run_n_regions_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME run_gmem_m_axi RTLNAME run_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME run_control_s_axi RTLNAME run_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME run_regslice_both RTLNAME run_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME run_regslice_both_U}
    }
  }
}
