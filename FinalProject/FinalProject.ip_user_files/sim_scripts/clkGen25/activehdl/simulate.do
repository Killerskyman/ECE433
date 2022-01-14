onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+clkGen25 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clkGen25 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {clkGen25.udo}

run -all

endsim

quit -force
