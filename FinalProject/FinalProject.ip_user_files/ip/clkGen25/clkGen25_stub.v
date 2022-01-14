// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Mon Nov 29 10:28:51 2021
// Host        : skilletLaptop running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub
//               /home/skillet/git/ECE433/FinalProject/FinalProject.srcs/sources_1/ip/clkGen25/clkGen25_stub.v
// Design      : clkGen25
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clkGen25(clk25, clk100)
/* synthesis syn_black_box black_box_pad_pin="clk25,clk100" */;
  output clk25;
  input clk100;
endmodule
