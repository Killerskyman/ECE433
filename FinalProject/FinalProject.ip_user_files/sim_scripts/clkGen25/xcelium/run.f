-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../FinalProject.srcs/sources_1/ip/clkGen25/clkGen25_clk_wiz.v" \
  "../../../../FinalProject.srcs/sources_1/ip/clkGen25/clkGen25.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

