`timescale 1ns / 1ps
//Author: Jianjian Song
//Date: September 2021
//Purpose: Problem #7 Homework #2
//ECE433 Fall 2021

// TxModule_Toplevel_ece433fall2021.v
//uart transmission unit with data unit and controller

module TxModule_Toplevel_ece433fall2021(input Start, Parity, Reset, Clock,
input [8:0] Data,
input [3:0] Speed,	//baud in the number of clock cycles
output Tx);

wire Load, ShiftOut;

//module TxController_ece433fall2021(input Start, Reset, Clock,
//input [3:0] Speed,
//output reg Load, ShiftOut,
//reg [4:0] BitCount);


TxController_ece433fall2021 ControlUnit(Start, Reset, Clock, Speed, Load, ShiftOut);

//module TxDataUnit_ece433fall2021 #(parameter DataLength=9)(
//input [DataLength-1:0] Data,
//input Load, ShiftOut, Parity, Reset, Clock,
//output Tx);

TxDataUnit_ece433fall2021 DataUnit(Data, Load, ShiftOut, Parity, Reset, Clock, Tx);

endmodule
