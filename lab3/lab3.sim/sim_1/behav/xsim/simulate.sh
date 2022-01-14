#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue Nov 30 03:49:55 EST 2021
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim lab3detectUnitTB_behav -key {Behavioral:sim_1:Functional:lab3detectUnitTB} -tclbatch lab3detectUnitTB.tcl -view /home/skillet/git/ECE433/lab3/lab3detectUnitTB_behav.wcfg -log simulate.log"
xsim lab3detectUnitTB_behav -key {Behavioral:sim_1:Functional:lab3detectUnitTB} -tclbatch lab3detectUnitTB.tcl -view /home/skillet/git/ECE433/lab3/lab3detectUnitTB_behav.wcfg -log simulate.log

