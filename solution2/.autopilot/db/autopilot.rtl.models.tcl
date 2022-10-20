set SynModuleInfo {
  {SRCNAME read_data MODELNAME read_data RTLNAME top_read_data}
  {SRCNAME insert_point_Pipeline_VITIS_LOOP_262_1 MODELNAME insert_point_Pipeline_VITIS_LOOP_262_1 RTLNAME top_insert_point_Pipeline_VITIS_LOOP_262_1
    SUBMODULES {
      {MODELNAME top_fsub_32ns_32ns_32_4_full_dsp_1 RTLNAME top_fsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME top_faddfsub_32ns_32ns_32_4_full_dsp_1 RTLNAME top_faddfsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME top_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME top_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME top_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME top_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME top_mux_21_32_1_1 RTLNAME top_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_flow_control_loop_pipe_sequential_init RTLNAME top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME insert_point MODELNAME insert_point RTLNAME top_insert_point
    SUBMODULES {
      {MODELNAME top_faddfsub_32ns_32ns_32_4_full_dsp_1 RTLNAME top_faddfsub_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME top_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME top_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME top_mux_84_32_1_1 RTLNAME top_mux_84_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute MODELNAME compute RTLNAME top_compute
    SUBMODULES {
      {MODELNAME top_mux_648_8_1_1 RTLNAME top_mux_648_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_mux_864_32_1_1 RTLNAME top_mux_864_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_compute_out_AOV_RAM_AUTO_1R1W RTLNAME top_compute_out_AOV_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME handle_outcome MODELNAME handle_outcome RTLNAME top_handle_outcome
    SUBMODULES {
      {MODELNAME top_mux_168_8_1_1 RTLNAME top_mux_168_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME top_handle_outcome_in_AOV_RAM_AUTO_1R1W RTLNAME top_handle_outcome_in_AOV_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME run MODELNAME run RTLNAME top_run
    SUBMODULES {
      {MODELNAME top_fifo_w320_d1_S RTLNAME top_fifo_w320_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME top_fifo_w297_d1_S RTLNAME top_fifo_w297_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME top MODELNAME top RTLNAME top IS_TOP 1
    SUBMODULES {
      {MODELNAME top_regions_RAM_AUTO_1R1W RTLNAME top_regions_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME top_gmem_m_axi RTLNAME top_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME top_control_s_axi RTLNAME top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
