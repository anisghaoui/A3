vlib work

vcom -2008 "../TP_A3/SQRT.vhd"
vcom -2008 "tb_SQRT_module.vhd"

vsim tb_SQRT_module

add wave -radix unsigned *
add wave -radix unsigned -divider
add wave -radix unsigned /SQRT_module_inst/*
add wave -radix unsigned -divider

run -all
