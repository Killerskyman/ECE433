onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Clock50MHzGenerator_opt

do {wave.do}

view wave
view structure
view signals

do {Clock50MHzGenerator.udo}

run -all

quit -force
