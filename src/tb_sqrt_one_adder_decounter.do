vlib work

vcom -2008 "../TP_A3/sqrt_one_adder_decounter.vhd"
vcom -2008 "tb_sqrt_one_adder_decounter.vhd"

vsim tb_sqrt_one_adder_decounter

add wave -radix unsigned *
add wave -radix unsigned -divider
add wave -radix unsigned /SQRT_module_inst/*
add wave -radix unsigned -divider

run -all
