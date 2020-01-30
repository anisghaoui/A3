vlib work

vcom -2008 "../TP_A3/sqrt_5_states.vhd"
vcom -2008 "tb_sqrt_5_states.vhd"

vsim tb_sqrt_5_states

add wave -radix unsigned *
add wave -radix unsigned -divider
add wave -radix unsigned /SQRT_module_inst/*
add wave -radix unsigned -divider

run -all
