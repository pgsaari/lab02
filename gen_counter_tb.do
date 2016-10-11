#******************************************************************************
#                                                                             *
#                  Copyright (C) 2009 Altera Corporation                      *
#                                                                             *
# ALTERA, ARRIA, CYCLONE, HARDCOPY, MAX, MEGACORE, NIOS, QUARTUS & STRATIX    *
# are Reg. U.S. Pat. & Tm. Off. and Altera marks in and outside the U.S.      *
#                                                                             *
# All information provided herein is provided on an "as is" basis,            *
# without warranty of any kind.                                               *
#                                                                             *
# File Name: gen_counter_tb.do                                                    *
#                                                                             *
# Function: Script file for Introduction to VHDL exercise 4b                  *
#                                                                             *
# REVISION HISTORY:                                                           *
#  Revision 1.0    12/05/2009 - Initial Revision  for QII 9.1                 *
#******************************************************************************

vlib work
vcom gen_counter.vhd gen_counter_tb.vhd
vsim -t ns work.gen_counter_tb
view wave
add wave -radix binary /clk
add wave -radix unsigned /data
add wave -radix binary /load
add wave -radix binary /enable
add wave -radix binary /reset
add wave -radix unsigned /count
add wave -radix binary /term
run 1000 ns