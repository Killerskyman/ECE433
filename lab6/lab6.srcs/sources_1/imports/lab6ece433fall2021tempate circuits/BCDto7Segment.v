`timescale 1ns / 100ps
//Jianjian Song
//Date: 4 April 2020
//BCD to 7 segment display
//Common-Cathode decoding
module HEXto7Segment (input [3:0] HEXnumber, output reg [7:0] SEGMENTS);
//SevenSegments are ordered from DP, G,F,E,D,C,B,A
//Segment A = SevenSegments[0].
//Active lower Enable
	always @ (HEXnumber)
			case (HEXnumber)
				0:	SEGMENTS <= 8'B11000000;
				1:	SEGMENTS <= 8'B11111001;
				2:	SEGMENTS <= 8'B10100100;
				3:	SEGMENTS <= 8'B10110000;
				4:	SEGMENTS <= 8'B10011001;
				5:	SEGMENTS <= 8'B10010010;
				6:	SEGMENTS <= 8'B10000010;
				7:	SEGMENTS <= 8'B11111000;
				8:	SEGMENTS <= 8'B10000000;
				9:	SEGMENTS <= 8'B10010000;
				10: SEGMENTS <= 8'B10001000;
				11: SEGMENTS <= 8'B10000011;
				12: SEGMENTS <= 8'B10100111;
				13: SEGMENTS <= 8'B10100001;
				14: SEGMENTS <= 8'B10000110;
				15: SEGMENTS <= 8'B10001110;
			endcase	
endmodule
