`timescale 1ns / 1ps
//ECE 433 Fall 2021
module vsyncModule2021fall_tb;

	reg yLineEnd, reset, clock;
	reg [9:0] ySynchPulse, yFrontPorch, yActiveVideo, yBackPorch;

	wire vsync;
	wire [9:0] yposition;
	
//module vsyncModule2021fall #(parameter yresolution=10)(
//input reset, clock, LineEnd, 
//input [yresolution-1:0] SynchPulse, BackPorch, ActiveVideo, FrontPorch, 
//output vsync, output [yresolution-1:0] yposition);

	vsyncModule2021fall uut (reset, clock, yLineEnd, ySynchPulse,  yBackPorch, yActiveVideo, 
	yFrontPorch, vsync, yposition);
	
//	initial begin
//	PixelClock=0;   xSynchPulse = 2;  xBackPorch = 3;  xActiveVideo = 5;
//	xFrontPorch = 2;   reset = 0; clock = 0;    end
//	always #1 clock=~clock;
//	always #4 PixelClock=~PixelClock;
//	initial fork
//	#0 reset=1; 	#12 reset=0; 
//   #290 $stop;
//	join 
	
	initial begin
		ySynchPulse = 2;  yBackPorch = 3;  yActiveVideo = 5;
		yFrontPorch = 1;   reset = 0; clock = 0;    yLineEnd=0; end
	always #1 clock=~clock;
	always #6 yLineEnd=~yLineEnd;
	initial fork
	#0 reset=1; 	#12 reset=0; 
	join
endmodule

