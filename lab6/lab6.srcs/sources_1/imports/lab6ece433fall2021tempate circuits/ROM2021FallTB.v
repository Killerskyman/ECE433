`timescale 1ns / 1ps
//ECE433 Fall 2020
//Block ROM test
module ROM2020FallTB;

	reg clka;
	reg [6:0] addra;
	wire [6:0] douta;
	integer i;
	
blk_mem_gen_0 your_instance_name (.clka(clka), // input clka
  .addra(addra), // input [6 : 0] addra, 7-bit address
  .douta(douta) // output [6 : 0] douta
);
	
	initial begin  clka = 0; addra = 0; end
	always #4 clka = ~clka; 
	
	initial fork
	for (i=0; i<=48; i=i+1) #8 addra=i;	
	#390 $stop;    //48 locations x8 ns =384 ns
	join
endmodule
