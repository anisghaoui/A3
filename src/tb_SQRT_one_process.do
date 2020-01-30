vlib work

vcom -2008 "../TP_A3/SQRT_one_process.vhd"
vcom -2008 "tb_SQRT_one_process.vhd"

vsim tb_SQRT_one_process

add wave -radix unsigned *
add wave -radix unsigned -divider
add wave -radix unsigned /SQRT_one_process_inst/*
add wave -radix unsigned -divider

run -all
