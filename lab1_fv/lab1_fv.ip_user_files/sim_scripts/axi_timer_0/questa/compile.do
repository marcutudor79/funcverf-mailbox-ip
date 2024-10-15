vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/lib_pkg_v1_0_3
vlib questa_lib/msim/axi_timer_v2_0_31
vlib questa_lib/msim/xil_defaultlib

vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_3 questa_lib/msim/lib_pkg_v1_0_3
vmap axi_timer_v2_0_31 questa_lib/msim/axi_timer_v2_0_31
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_3  -93  \
"../../../ipstatic/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_31  -93  \
"../../../ipstatic/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../lab1_fv.gen/sources_1/ip/axi_timer_0/sim/axi_timer_0.vhd" \


