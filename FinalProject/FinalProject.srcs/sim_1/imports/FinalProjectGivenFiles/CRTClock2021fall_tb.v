`timescale 1ns / 1ps
//ECE433 Fall 2021
module CRTClock2021fall_tb;

	reg [9:0] SystemClock, CRTclock;
	reg Reset, Clock;

	wire pixelclock;
//module CRTClock2021fall #(parameter SystemClockSize=10)(
//input Reset, Clock,
//input [SystemClockSize-1:0] SystemClockFreq, CRTClockFreq, 
//output reg PixelClock);

	CRTClock2021fall uut (Reset, Clock, SystemClock, CRTclock, pixelclock);

	initial begin SystemClock = 100; CRTclock=25; Reset = 0; Clock = 0; end
 
	initial fork
	#0 Reset=1; #20 Reset=0;
	#800 $stop;
	join
	always #4 Clock=~Clock;   
endmodule

