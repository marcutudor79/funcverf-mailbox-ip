onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_3 -L axi_timer_v2_0_31 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.axi_timer_0

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {axi_timer_0.udo}

run 1000ns

quit -force
