onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.Clock50MHzGenerator xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {Clock50MHzGenerator.udo}

run -all

quit -force
