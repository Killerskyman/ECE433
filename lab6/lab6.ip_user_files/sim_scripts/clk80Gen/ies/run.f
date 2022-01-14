-makelib ies_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../lab6.srcs/sources_1/ip/clk80Gen/clk80Gen_clk_wiz.v" \
  "../../../../lab6.srcs/sources_1/ip/clk80Gen/clk80Gen.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

