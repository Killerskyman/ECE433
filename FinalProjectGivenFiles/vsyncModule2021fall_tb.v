`timescale 1ns / 1ps
//ECE 433 Fall 2021
module vsyncModule2021fall_tb;

	reg LineEnd, reset, clock;
	reg [9:0] SynchPulse, FrontPorch, ActiveVideo, BackPorch;

	wire vsync;
	wire [9:0] yposition;
//module vsyncModule2021fall #(parameter yresolution=10)(
//input reset, clock, LineEnd, 
//input [yresolution-1:0] SynchPulse, BackPorch, ActiveVideo, FrontPorch, 
//output vsync, output [yresolution-1:0] yposition);

	vsyncModule2021fall uut (reset, clock, LineEnd, SynchPulse,  BackPorch, ActiveVideo, 
	FrontPorch, vsync, yposition);
	
	initial begin
		SynchPulse = 2;  BackPorch = 3;  ActiveVideo = 5;
		FrontPorch = 1;   reset = 0; clock = 0;    LineEnd=0; end
	always #1 clock=~clock;
	always #6 LineEnd=~LineEnd;
	initial fork
	#0 reset=1; 	#12 reset=0; 
   #300 $stop;
	join
endmodule

