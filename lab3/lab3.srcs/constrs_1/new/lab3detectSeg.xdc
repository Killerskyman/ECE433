#lab3detect11001SevenSegDisplay.xdc 
#Lab #3 to detect 11001 and display on 7-segment display  
#ECE433 Fall 2021 
#LD15 
set_property PACKAGE_PIN V11 [get_ports Detected] 
#BTNU 
set_property PACKAGE_PIN M18 [get_ports ManualClock] 
//BTND 
set_property PACKAGE_PIN P18 [get_ports Reset] 
//SW0 
set_property PACKAGE_PIN J15 [get_ports X] 
//E3 100MHz 
set_property PACKAGE_PIN E3 [get_ports Clock] 
//LD4-0 
set_property PACKAGE_PIN R18 [get_ports {FiveBitInput[4]}] 
set_property PACKAGE_PIN N14 [get_ports {FiveBitInput[3]}] 
set_property PACKAGE_PIN J13 [get_ports {FiveBitInput[2]}] 
set_property PACKAGE_PIN K15 [get_ports {FiveBitInput[1]}] 
set_property PACKAGE_PIN H17 [get_ports {FiveBitInput[0]}] 
//DP, G, F, E, D, C, B, A 
set_property PACKAGE_PIN H15 [get_ports {Segments[7]}] 
set_property PACKAGE_PIN L18 [get_ports {Segments[6]}] 
set_property PACKAGE_PIN T11 [get_ports {Segments[5]}] 
set_property PACKAGE_PIN P15 [get_ports {Segments[4]}] 
set_property PACKAGE_PIN K13 [get_ports {Segments[3]}] 
set_property PACKAGE_PIN K16 [get_ports {Segments[2]}] 
set_property PACKAGE_PIN R10 [get_ports {Segments[1]}] 
set_property PACKAGE_PIN T10 [get_ports {Segments[0]}] 
 
set_property IOSTANDARD LVCMOS33 [get_ports {FiveBitInput[4]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {FiveBitInput[3]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {FiveBitInput[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {FiveBitInput[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {FiveBitInput[0]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[7]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[6]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[5]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[4]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[3]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[2]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[1]}] 
set_property IOSTANDARD LVCMOS33 [get_ports {Segments[0]}] 
ECE 433-01 Fall 2021 Lab #3 State Machines and Detect 11001  Page 10 of 15 
set_property IOSTANDARD LVCMOS33 [get_ports Clock] 
set_property IOSTANDARD LVCMOS33 [get_ports Detected] 
set_property IOSTANDARD LVCMOS33 [get_ports ManualClock] 
set_property IOSTANDARD LVCMOS33 [get_ports Reset] 
set_property IOSTANDARD LVCMOS33 [get_ports X]