`timescale 1ns / 1ps
//File: hsyncModule2021fall.v
//Author: Jianjian Song
//Date: October 27, 2021
//to generate hsync signal and x position coordinate for VGA video display
//Rose-Hulman Institute of Technology
//PixelClock provides the reference time for pixel duration
//Restart is not synchronized with PixelClock
//synch pulse is generated at the end of the line: Active Video-BackPorch-SynchPulse-FrontPorch
//this is how it is done by the video timer of the pong game
// x coordinate has to cover the whole line from 0 to 800 for the game module to work

module hsyncModule2021fall #(parameter xresolution=10)(
input reset, clock,
input [xresolution-1:0] SynchPulse, BackPorch, ActiveVideo, FrontPorch,
input PixelClock, 
output hsync, LineEnd, output reg [xresolution-1:0] xposition);

wire [xresolution-1:0] xcount;
//module FallingEdgePositiveOneShot(iput Reset, CLOCK, InputPulse, output reg OneShot);

FallingEdgePositiveOneShot PixelClockUnit(reset, clock, PixelClock, PixelClockOneShot);

wire [xresolution-1:0] EndCount=SynchPulse+FrontPorch+ActiveVideo+BackPorch;
assign LineEnd=xcount==EndCount;	//reset counter
//synch pulse appears at the end of the line and after front porch to mimic the pong video_timer
//hsync <= ~(xpos > 664 && xpos <= 760);  // active for 95 clocks
assign hsync = ~(xcount>=(ActiveVideo+FrontPorch)&&xcount<=(ActiveVideo+FrontPorch+SynchPulse));
always@(*) 
	xposition<=xcount;	//the game circuit does not work if xposition does not run from 0 to 800. JJS
//module UniversalCounter2021fall #(parameter length = 10) (
//input Reset, CLOCK, S1,S0,
//input	[length-1:0] P, BeginCount, EndCount, 
//output reg [length-1:0] count_value,
//output reg TerminalCount);

UniversalCounter2021fall XPositionCounter( reset, clock, LineEnd,LineEnd||PixelClockOneShot,
10'd0,10'd0, EndCount, xcount,   ) ;

endmodule
