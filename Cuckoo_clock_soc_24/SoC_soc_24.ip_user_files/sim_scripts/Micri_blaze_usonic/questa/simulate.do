onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Micri_blaze_usonic_opt

do {wave.do}

view wave
view structure
view signals

do {Micri_blaze_usonic.udo}

run -all

quit -force
