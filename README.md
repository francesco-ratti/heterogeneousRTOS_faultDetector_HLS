# HeterogeneousRTOS Fault Detector HLS

Vitis HLS (High Level Synthesis) Project for fault detector used in [HeterogeneousRTOS hardware platform](https://github.com/francesco-ratti/heterogeneousRTOS_HW).

Fine tune the code according to your needings and the parameters in the custom driver (faultdetector_customdrvs/faultdetector_custom.h) accordingly. Export the IP, then adjusting the paths to the exported artifact (by default "export.zip" in the repository root) in the "extract_export_and_update_drv.sh" to unzip the artifact and integrate the custom drivers source code in the automatically-generated drivers. Subsequently, place the unzipped fault detector IP in your Vivado IP repo, making Vivado able to find it.

Related repositories:\
[HeterogeneousRTOS Source Code](https://github.com/francesco-ratti/heterogeneousRTOS)\
[HeterogeneousRTOS Vivado Platform](https://github.com/francesco-ratti/heterogeneousRTOS_HW)\
[Benchmarks source code and experimental evaluation artifacts](https://github.com/francesco-ratti/heterogeneousRTOS_benchmarks)\
[Data processing and analysis scripts](https://github.com/francesco-ratti/heteregeneousRTOS_benchmarks_data_analysis_scripts)
