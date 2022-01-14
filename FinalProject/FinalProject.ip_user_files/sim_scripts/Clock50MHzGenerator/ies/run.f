-makelib ies_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../FinalProject.srcs/sources_1/ip/Clock50MHzGenerator/Clock50MHzGenerator_clk_wiz.v" \
  "../../../../FinalProject.srcs/sources_1/ip/Clock50MHzGenerator/Clock50MHzGenerator.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

