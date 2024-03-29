onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+data_buf -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L fifo_generator_v13_1_0 -O5 xil_defaultlib.data_buf xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {data_buf.udo}

run -all

endsim

quit -force
