FILE=baverage
TARGET=synth
#TARGET=synth_ice40


include ../Makefile.inc

fsm:
	 yosys -p 'read_verilog -sv baverage.sv; proc; opt -nodffe -nosdff; fsm -nomap -export; fsm_export -o foo.kiss'

fsm2:
	 yosys -p 'read_verilog test.v; proc; opt -nodffe -nosdff; fsm -nomap -export; fsm_export -o foo.kiss'
