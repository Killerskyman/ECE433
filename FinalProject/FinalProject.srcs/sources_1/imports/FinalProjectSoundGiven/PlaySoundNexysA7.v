`timescale 1ns / 1ps
//File: PlaySoundNexysA7.v
//Author: Jianjian Song
//Date:	November 2021, ECE433 Fall 2021
//Play a music score stored in RAM in MusicSheet.v
//PlayAgain - play the score stored in MusicSheet when a positive pulse appears on PlayAgain

module PlaySoundNexysA7(input PlayAgain, Reset, Clock100MHz,
output Speaker, ClockReady);

wire Clock;

Clock50MHzGenerator clockUnit(.clk_in100MHz(Clock100MHz), .clk_out50MHz(Clock), .locked(ClockReady));
parameter DataLength=4;
wire [2:0] NoteArray;	//three notes
wire [DataLength-1:0] KeyOutput, TimeOutput;
wire EndofScore, OneShotPlayAgain;

//module PlayNote(Note, Duration, Start, Over, NoteArray, Reset, Clock);
PlayNote2 PlayNoteUnit(KeyOutput, TimeOutput, ~EndofScore, Over, NoteArray, Reset, Clock);

//module ThreeMusicNotes(keyC, keyD, keyE, Speaker, Reset, Clock) ;
ThreeMusicNotes NoteUnit(NoteArray[0], NoteArray[1], NoteArray[2], Speaker, Reset, Clock) ;

endmodule
