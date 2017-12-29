onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+inst_mem -L xil_defaultlib -L xpm -L blk_mem_gen_v8_3_5 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.inst_mem xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {inst_mem.udo}

run -all

endsim

quit -force