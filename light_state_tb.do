vlib work
vcom light_state.vhd light_state_tb.vhd
vsim -t ns work.light_state_tb
view wave
add wave -radix binary /clk
add wave -radix unsigned /state_out
add wave -radix unsigned /NS_light
add wave -radix binary /NS_left_bit
add wave -radix unsigned /EW_light
add wave -radix binary /EW_left_bit
add wave -radix binary /count1_term
add wave -radix binary /count1_en
add wave -radix unsigned /count_out1
add wave -radix binary /count2_term
add wave -radix binary /count2_en
add wave -radix unsigned /count_out2
add wave -radix binary /count3_term
add wave -radix binary /count3_en
add wave -radix unsigned /count_out3
add wave -radix ascii /light_state1/current_state
add wave -radix ascii /light_state1/next_state
run 1000 ns