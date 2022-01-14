// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Nov 30 05:03:42 2021
// Host        : skilletLaptop running 64-bit Debian GNU/Linux 10 (buster)
// Command     : write_verilog -force -mode synth_stub
//               /home/skillet/git/ECE433/lab6/lab6.srcs/sources_1/ip/clk80Gen/clk80Gen_stub.v
// Design      : clk80Gen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk80Gen(clk80, locked, clk100)
/* synthesis syn_black_box black_box_pad_pin="clk80,locked,clk100" */;
  output clk80;
  output locked;
  input clk100;
endmodule
