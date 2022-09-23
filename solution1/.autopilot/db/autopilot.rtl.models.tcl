set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME run_entry_proc}
  {SRCNAME read_train MODELNAME read_train RTLNAME run_read_train}
  {SRCNAME find_region MODELNAME find_region RTLNAME run_find_region
    SUBMODULES {
      {MODELNAME run_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME run_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME run_fdiv_32ns_32ns_32_9_no_dsp_1 RTLNAME run_fdiv_32ns_32ns_32_9_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME run_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME find_closest_region MODELNAME find_closest_region RTLNAME run_find_closest_region
    SUBMODULES {
      {MODELNAME run_faddfsub_32ns_32ns_32_4_full_dsp_1_x RTLNAME run_faddfsub_32ns_32ns_32_4_full_dsp_1_x BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME run_fmul_32ns_32ns_32_2_max_dsp_1_x RTLNAME run_fmul_32ns_32ns_32_2_max_dsp_1_x BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME run_fcmp_32ns_32ns_1_2_no_dsp_1_x RTLNAME run_fcmp_32ns_32ns_1_2_no_dsp_1_x BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME run_mux_164_32_1_1 RTLNAME run_mux_164_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME run_mux_154_32_1_1 RTLNAME run_mux_154_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME insert_point_Pipeline_VITIS_LOOP_254_3 MODELNAME insert_point_Pipeline_VITIS_LOOP_254_3 RTLNAME run_insert_point_Pipeline_VITIS_LOOP_254_3
    SUBMODULES {
      {MODELNAME run_flow_control_loop_pipe_sequential_init RTLNAME run_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME run_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME insert_point MODELNAME insert_point RTLNAME run_insert_point
    SUBMODULES {
      {MODELNAME run_faddfsub_32ns_32ns_32_4_full_dsp_1 RTLNAME run_faddfsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME run_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME run_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME run_mux_1632_32_1_1 RTLNAME run_mux_1632_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME run_insert_point_run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3bkb RTLNAME run_insert_point_run_controlStr_REGION_T_16_ap_int_ap_int_ap_int_stream_regions_3bkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME runTrainAfterInit MODELNAME runTrainAfterInit RTLNAME run_runTrainAfterInit
    SUBMODULES {
      {MODELNAME run_fifo_w6_d3_S RTLNAME run_fifo_w6_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME run_fifo_w32_d2_S RTLNAME run_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME run MODELNAME run RTLNAME run IS_TOP 1
    SUBMODULES {
      {MODELNAME run_n_regions_V_RAM_AUTO_1R1W RTLNAME run_n_regions_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME run_gmem_m_axi RTLNAME run_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME run_control_s_axi RTLNAME run_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME run_regslice_both RTLNAME run_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME run_regslice_both_U}
    }
  }
}
