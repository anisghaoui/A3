vlib work

vcom -2008 "../TP_A3/sqrt_one_adder.vhd"
vcom -2008 "tb_sqrt_one_adder.vhd"

vsim tb_sqrt_one_adder

add wave -radix unsigned *
add wave -radix unsigned -divider
add wave -radix unsigned /SQRT_module_inst/*
add wave -radix unsigned -divider

run -all
