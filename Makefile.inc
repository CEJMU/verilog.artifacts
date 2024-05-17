.DEFAULT_GOAL := all

simulation: $(FILE).sv $(FILE)_tb.sv
	iverilog -o test_pre $(FILE).sv $(FILE)_tb.sv
	vvp test_pre

synthesis: $(FILE).sv
	yosys -p '$(TARGET) -top $(FILE); write_json $(FILE).json; show -format svg -prefix $(FILE)_yosys;' $(FILE).sv

visualize:
	sed -i -e 's/inout/output/g' $(FILE).json
	netlistsvg $(FILE).json -o $(FILE).svg
	svgo $(FILE).svg
	rsvg-convert -f pdf -o $(FILE).pdf $(FILE).svg

pr: 
	DYLD_FRAMEWORK_PATH=/Users/myzinsky/Zeugs/Qt/5.15.2/clang_64/lib nextpnr-ice40 --hx1k --json $(FILE).json --routed-svg $(FILE)-routed.svg
	rsvg-convert -f pdf -o $(FILE)-routed.pdf $(FILE)-routed.svg
	rsvg-convert -f png -o $(FILE)-routed.png $(FILE)-routed.svg

all: simulation synthesis visualize

clean:
	rm -f test_pre $(FILE).vcd $(FILE).json* $(FILE).pdf $(FILE).svg $(FILE)_yosys.svg $(FILE)_yosys.dot $(FILE)-routed.svg $(FILE)-routed.pdf $(FILE)-routed.png
