-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Mon Nov 29 03:04:31 2021
-- Host        : skilletLaptop running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/skillet/git/ECE433/FinalProject/FinalProject.srcs/sources_1/ip/Clock50MHzGenerator/Clock50MHzGenerator_stub.vhdl
-- Design      : Clock50MHzGenerator
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Clock50MHzGenerator is
  Port ( 
    clk_out50MHz : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in100MHz : in STD_LOGIC
  );

end Clock50MHzGenerator;

architecture stub of Clock50MHzGenerator is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out50MHz,locked,clk_in100MHz";
begin
end;
