set_property SRC_FILE_INFO {cfile:/home/skillet/git/ECE433/FinalProject/FinalProject.srcs/sources_1/ip/Clock50MHzGenerator/Clock50MHzGenerator.xdc rfile:../../../FinalProject.srcs/sources_1/ip/Clock50MHzGenerator/Clock50MHzGenerator.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in100MHz]] 0.1
