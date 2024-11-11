onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Micro_blaze_dht11_opt

do {wave.do}

view wave
view structure
view signals

do {Micro_blaze_dht11.udo}

run -all

quit -force
