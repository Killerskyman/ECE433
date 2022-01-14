#Playsound for Nexys A7
set_property PACKAGE_PIN E3 [get_ports Clock100MHz]
#BNTU
set_property PACKAGE_PIN M18 [get_ports PlayAgain]
#BNTD
set_property PACKAGE_PIN P18 [get_ports Reset]
#Pin JC4
set_property PACKAGE_PIN G6 [get_ports Speaker]
#LD0
set_property PACKAGE_PIN H17 [get_ports ClockReady]

set_property IOSTANDARD LVCMOS33 [get_ports PlayAgain]
set_property IOSTANDARD LVCMOS33 [get_ports Reset]
set_property IOSTANDARD LVCMOS33 [get_ports Speaker]
set_property IOSTANDARD LVCMOS33 [get_ports ClockReady]
set_property IOSTANDARD LVCMOS33 [get_ports Clock100MHz]
