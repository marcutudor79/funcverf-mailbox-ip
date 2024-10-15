@echo off
xvhdl -incr ../lab1_fv.gen/sources_1/ip/axi_timer_0/sim/axi_timer_0.vhd
xvlog -incr -sv -f compile_list.f -L uvm ;

xelab testbench -relax -s top -timescale 1ns/1ps;
xsim top -runall
