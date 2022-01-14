`timescale 1ns / 1ps
//File Name:  lab6ece433fall2021template.v
//this is a template. sendchars2021fall.v works with RAM and ROM module
//This circuit is incomplete and may have bugs
// Author: add your name here
// Lab #6, ECE433 Fall 2021
//Baud = 57600, Clock = 80MHz
/// send RAM or ROM content to a serial port
// update RAM content manually
//ROMorRAM switch to choose ROM (SW=0) or RAM (SW=1) to transmit to uart
//Press Send push button on BTNU to send characters to uart
//Mode switch to choose RAM operation 
//Mode=0: send memory content to serial port
//Mode=1: update memory content
//WriteOrRead push button BTNC to read RAM (0) and to write (1) to RAM
//DataIn on SW6-0 to set up new data for RAM
//nextAddress pushbuton BTNR to increase RAM address

module Lab6ece433fall2021template #(parameter RAMAddressSize=7) (
input Mode, ROMorRAM, Send, WriteOrRead, NextAddress, reset, clock,
input [6:0] DataIn,
output [7:0] Display,
output [7:0] Transistors,
output Locked, Transmitting, tx);

reg [RAMAddressSize-1:0] RAMaddress;

wire [RAMAddressSize-1:0] RAMaddressUpdate, AddressSend;

//choose RAMaddress based on Mode
always@(Mode,RAMaddressUpdate,AddressSend)
case(Mode)

endcase

wire clk80MHz;
//assign clk80MHz=clock; for simulation

Clock80MHz ClockUnit
   (// Clock in ports
    .clk_in100MHz(clock),      // IN
    // Clock out ports
    .clk_out80MHz(clk80MHz),     // OUT
    // Status and control signals
    .locked(Locked));      // OUT
	 
// Signals for UART connections
wire write_to_uart;
wire tx_full;
reg read_from_uart;
//wire [7:0] rx_data;
wire [6:0] RAMDataout, ROMDataout;
//Next Address advance one shot
wire DebouncedNext, OneShotNext;
Debouncer2021fall NextDebounceUnit(NextAddress, reset, clk80MHz, DebouncedNext) ;
PositiveClockedOneShot NextOneShot(DebouncedNext, reset, clk80MHz, OneShotNext);

//module RAMAddressUpdate #(parameter RAMaddressBits=6) (
//input NextAddress, reset, clock,
//output reg [RAMaddressBits-1:0] RAMaddress); 

RAMAddressUpdate UpdateAddress(OneShotNext, reset, clk80MHz, RAMaddressUpdate);

//module RAM80x7bitsJJS #(parameter DataWidth=7, MemorySize=60, AddressBits=6)
//(input reset, clock, writeOrread,
//input [AddressBits:0] address,
//input [DataWidth-1:0] din,
//output [DataWidth-1:0] dout);
RAM80x7bitsJJS RAMUnit(reset, clk80MHz, , RAMaddress, DataIn, RAMDataout);

//ROM
ROM80x7bitsJJS ROMunit (.clka(clk80MHz),
.addra(AddressSend), // input [5 : 0] addra
.douta(ROMDataout) // output [6 : 0] douta
);

//module SendChars2021Fall #(parameter AddressBits=6)(
//input Start, tx_full, reset, clock, input [6:0] data,
//output reg write_to_uart, Transmitting,
//output reg [AddressBits-1:0] Address);

SendChars2021Fall SendCharsUnit(Send, tx_full, reset, clk80MHz, tx_data, write_to_uart, Transmitting, AddressSend);

//module UARTmodule433fall2010(rx, tx, tx_full, rx_data_present, read_from_uart, write_to_uart, 
//rx_data, tx_data, transmitted_bits, clock, reset);

reg [7:0] tx_data;
    always@(ROMorRAM, ROMDataout, RAMDataout)
        if (ROMorRAM==0) tx_data<={1'b0,ROMDataout};
        else tx_data<={1'b0,RAMDataout};

UARTmodulefall2021oneshots UART(rx, tx, tx_full, , , write_to_uart, , tx_data, transmitted_bits, clk80MHz, reset);

//Hexto7Segment (Hexnumber,SEGMENTS);
wire [7:0] D7,D6,D3,D2,D1,D0;

HEXto7Segment Dig7({1'b0,DataIn[6:4]},D7);
HEXto7Segment Dig6(DataIn[3:0],D6);

HEXto7Segment Dig2({2'd0,RAMaddress[5:4]},D3);
HEXto7Segment Dig1(RAMaddress[3:0],D2);
HEXto7Segment Dig3({1'b0,RAMDataout[6:4]},D1);
HEXto7Segment Dig0(RAMDataout[3:0],D0);


//module SevenSegDriverNexysA7 #(parameter N=8)(
//input [N-1:0] D7, D6,D5, D4, D3, D2, D1, D0,
//input Reset, Clock,
//output [N-1:0]	Display,
//output [N-1:0] Select);
SevenSegDriverNexysA7 SevenSegUnit(D7,D6, , , D3, D2, D1, D0, reset, clk80MHz, Display, Transistors);

endmodule
