vlib work

vcom -2008 "../TP_A3/SQRT_pipeline.vhd"
vcom -2008 "tb_SQRT_pipeline.vhd"

vsim tb_SQRT_pipeline

add wave -radix unsigned * 
add wave -radix unsigned -divider 
add wave -radix unsigned /SQRT_pipeline_inst/* 
add wave -divider -radix unsigned

run -all
