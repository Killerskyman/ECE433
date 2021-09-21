`timescale 1ns / 1ps
//arthur: Skyler Cleland
//CM: 2284
//DATE:2021-09-14
//Purpose: hw1 question3, 2-bit multiplier

module MultiplierTruthTable (input [1:0] A, B, output reg [2:0] Product);

always @(A, B)
    casex({A[1], A[0], B[1], B[0]})
        4'b00xx: Product=0;
        4'bxx00: Product=0;
        4'bxx01: Product=A;
        4'b01xx: Product=B;
        4'b1010: Product=3'b100;
        4'b1011: Product=3'b110;
        4'b1110: Product=3'b110;
        4'b1111: Product=3'b001;
        default: Product=0;
        endcase
endmodule
