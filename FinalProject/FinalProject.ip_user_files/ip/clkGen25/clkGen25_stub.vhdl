-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Mon Nov 29 10:28:51 2021
-- Host        : skilletLaptop running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/skillet/git/ECE433/FinalProject/FinalProject.srcs/sources_1/ip/clkGen25/clkGen25_stub.vhdl
-- Design      : clkGen25
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clkGen25 is
  Port ( 
    clk25 : out STD_LOGIC;
    clk100 : in STD_LOGIC
  );

end clkGen25;

architecture stub of clkGen25 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk25,clk100";
begin
end;
