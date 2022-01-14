-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Tue Nov 30 05:03:42 2021
-- Host        : skilletLaptop running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/skillet/git/ECE433/lab6/lab6.srcs/sources_1/ip/clk80Gen/clk80Gen_stub.vhdl
-- Design      : clk80Gen
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk80Gen is
  Port ( 
    clk80 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk100 : in STD_LOGIC
  );

end clk80Gen;

architecture stub of clk80Gen is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk80,locked,clk100";
begin
end;
