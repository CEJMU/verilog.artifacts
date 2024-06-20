FILE=baverage
TARGET=synth
#TARGET=synth_ice40
OPT=

include ../Makefile.inc

fsm:
	 yosys -p 'read_verilog -sv baverage.sv; proc; opt -nodffe -nosdff; fsm -nomap -export; fsm_export -o $(TARGET).kiss'
	 python3 statemachine.py $(TARGET).kiss
	 dot -Tpdf -o $(TARGET)-fsm.pdf $(TARGET).dot

