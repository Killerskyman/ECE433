`timescale 1ns / 1ps
//Author: Jianjian Song
//Date: September 2021
//Purpose: Problem #7 Homework #2
//ECE433 Fall 2021

module TxModule_ToplevelTB_ece433fall2021;

	// Inputs
	reg Start;
	reg [8:0] Data;
	reg [3:0] Speed;
	reg Parity, Reset, Clock;
	
	wire Tx;
//module TxModule_Toplevel_ece433fall2021(input Start, Parity, Reset, Clock,
//    input [8:0] Data,
//    input [3:0] Speed,    //baud in the number of clock cycles
//    output Tx);

	TxModule_Toplevel_ece433fall2021 TopLevel (Start, Parity, Reset, Clock, Data, Speed, Tx);

	initial begin Start = 0; Data = 0; Speed = 0; Parity = 0; Reset = 0; Clock = 0; end
	always #4 Clock=~Clock;
	initial fork
	#0 Reset = 1;  #14 Reset = 0;  
	#0 Start = 0; #23 Start = 1;  #45 Start = 0; #388 Start = 1; #403 Start = 0; 
	#0 Data = 9'b110001010;    #298 Data = 9'b010111010; 
	#0 Speed = 3;  #349 Speed = 2;  
	#0 Parity = 0;  #200 Parity = 1; 
   #650 $stop;
	join
	
endmodule

