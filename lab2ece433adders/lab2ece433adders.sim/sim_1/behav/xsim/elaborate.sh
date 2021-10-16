#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Oct 07 03:20:41 EDT 2021
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto c91498f771f943be813ba9e121d9da79 --incr --debug all --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot adderSubtractorTB_behav xil_defaultlib.adderSubtractorTB xil_defaultlib.glbl -log elaborate.log -v 1"
xelab -wto c91498f771f943be813ba9e121d9da79 --incr --debug all --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot adderSubtractorTB_behav xil_defaultlib.adderSubtractorTB xil_defaultlib.glbl -log elaborate.log -v 1

