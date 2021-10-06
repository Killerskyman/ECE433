#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Oct 06 06:38:17 EDT 2021
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 21ffb5b1ae1947208233120230677059 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot lab3detectUnitTB_behav xil_defaultlib.lab3detectUnitTB xil_defaultlib.glbl -log elaborate.log"
xelab -wto 21ffb5b1ae1947208233120230677059 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot lab3detectUnitTB_behav xil_defaultlib.lab3detectUnitTB xil_defaultlib.glbl -log elaborate.log

