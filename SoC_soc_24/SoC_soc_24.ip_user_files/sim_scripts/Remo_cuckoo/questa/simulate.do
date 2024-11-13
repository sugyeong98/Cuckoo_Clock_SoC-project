onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Remo_cuckoo_opt

do {wave.do}

view wave
view structure
view signals

do {Remo_cuckoo.udo}

run -all

quit -force
