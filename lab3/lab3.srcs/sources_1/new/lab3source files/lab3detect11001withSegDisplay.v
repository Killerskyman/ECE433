`timescale 1ns / 1ps
//Lab #3 to detect 11001 and display on 7-segment display
//ECE433 Fall 2021
//2021-9-14
//Jianjian Song
module lab3detect10110withSegDisplay(
input X, Clock, Reset,ManualClock,
output Detected,
output[7:0] Segments,
output [4:0] FiveBitInput);

wire [2:0] State;
//DebouncerWithoutLatch(InputPulse, DebouncedOuput, Reset, CLOCK) ;
DebouncerWithoutLatch DebounceUnit(ManualClock, DebouncedManualClock, Reset, Clock) ;

//module ClockedPositiveOneShot(InputPulse, OneShot, Reset, CLOCK) ;
ClockedPositiveOneShot OneShotUnit(DebouncedManualClock, OneShot, Reset, Clock);

//module lab4Detect10110fall2020(X, Z, FiveBitInput, CurrentState, Clock, Reset);
lab3Detect11001fall2021 DetectUnit(X, Reset, OneShot, Detected, FiveBitInput, State);

//module BCDto7Segment (BCDnumber,SEGMENTS);
BCDto7Segment SevenSegmentDecoder({1'b0,State},Segments);

endmodule
