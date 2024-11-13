onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Mblaze_fnd_cntr_opt

do {wave.do}

view wave
view structure
view signals

do {Mblaze_fnd_cntr.udo}

run -all

quit -force
