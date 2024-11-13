onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Micro_blaze_iic_opt

do {wave.do}

view wave
view structure
view signals

do {Micro_blaze_iic.udo}

run -all

quit -force
