onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib clk80Gen_opt

do {wave.do}

view wave
view structure
view signals

do {clk80Gen.udo}

run -all

quit -force
