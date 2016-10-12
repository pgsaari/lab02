vlib work
vcom light_state.vhd light_state_tb.vhd
vsim -t ns work.light_state_tb
view wave
add wave -radix binary /clk
add wave -radix unsigned /NS_light
add wave -radix binary /NS_arrow
add wave -radix unsigned /EW_light
add wave -radix binary /EW_arrow
add wave -radix binary /count1_term
add wave -radix binary /count1_en
add wave -radix unsigned /count_out1
add wave -radix binary /count2_term
add wave -radix binary /count2_en
add wave -radix unsigned /count_out2
add wave -radix binary /count3_term
add wave -radix binary /count3_en
add wave -radix unsigned /count_out3
run 1000 ns