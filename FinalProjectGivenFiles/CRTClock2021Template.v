`timescale 1ns / 1ps
//File: CRTClock2021fall_template.v
//Generate 25MHz VGA clock from a SystemClock
//SystemClockFreq and CRTClockFreq are input parameters in MHz
//ECE433-01 Fall 2021
//Term Project on Pong game on VGA
//this is a template to be completed by students

module CRTClock2021fall_template #(parameter SystemClockSize=10)(
input Reset, Clock,
input [SystemClockSize-1:0] SystemClockFreq, CRTClockFreq, 
output reg PixelClock);


//a counter is needed to generate PixelClock

endmodule

