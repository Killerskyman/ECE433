`timescale 1ns / 1ps
module p4hw3fall2021counterTB;
	reg Reset, CLOCK;
	reg [1:0] Control;
	wire [4:0] count;
	p4hw3fall2021counter uut (Reset, CLOCK, Control, count);
	initial begin Reset = 0;  CLOCK = 0; Control = 0; end
	
	initial fork
	#4 Reset=1;   #21 Reset=0;  #123 Reset=1;  #141 Reset=0;
	#311 Reset=0;  #343 Reset=1;
	#0 Control=0;   #63 Control =1; #128    Control =2; 
	#183 Control=3;   #248 Control=2;   #298 Control=0;
	#354 Control=1; 	
	#350 $stop;
	join
   always #5 CLOCK=!CLOCK;
endmodule

