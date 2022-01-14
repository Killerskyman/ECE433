onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+clk80Gen -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clk80Gen xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {clk80Gen.udo}

run -all

endsim

quit -force
