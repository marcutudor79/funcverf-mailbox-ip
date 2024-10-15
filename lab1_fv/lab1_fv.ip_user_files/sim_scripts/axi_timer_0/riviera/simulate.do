transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+axi_timer_0  -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_3 -L axi_timer_v2_0_31 -L xil_defaultlib -L secureip -O5 xil_defaultlib.axi_timer_0

do {axi_timer_0.udo}

run 1000ns

endsim

quit -force
