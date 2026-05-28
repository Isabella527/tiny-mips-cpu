set DESIGN_NAME  "mips"
set SRC_DIR      "./src"
set REPORT_DIR   "./reports/cpu"

set target_library "/apps/design_kits/osu_stdcells_v2p7/synopsys/lib/ami05/osu05_stdcells.db"
set link_library   "* /apps/design_kits/osu_stdcells_v2p7/synopsys/lib/ami05/osu05_stdcells.db"
set symbol_library ""

analyze -library WORK -format verilog "$SRC_DIR/flop.v"
analyze -library WORK -format verilog "$SRC_DIR/flopen.v"
analyze -library WORK -format verilog "$SRC_DIR/flopenr.v"
analyze -library WORK -format verilog "$SRC_DIR/mux2.v"
analyze -library WORK -format verilog "$SRC_DIR/mux4.v"
analyze -library WORK -format verilog "$SRC_DIR/mux23.v"
analyze -library WORK -format verilog "$SRC_DIR/regfile.v"
analyze -library WORK -format verilog "$SRC_DIR/zerodetect.v"
analyze -library WORK -format verilog "$SRC_DIR/alucontrol.v"
analyze -library WORK -format verilog "$SRC_DIR/alu.v"
analyze -library WORK -format verilog "$SRC_DIR/controller.v"
analyze -library WORK -format verilog "$SRC_DIR/datapath.v"
analyze -library WORK -format verilog "$SRC_DIR/mips.v"

elaborate $DESIGN_NAME -architecture verilog -library WORK
link

create_clock -period 40 -name clk [get_ports clk]
set_input_delay  2 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay 2 -clock clk [all_outputs]

compile -map_effort medium

file mkdir $REPORT_DIR
report_area          > "$REPORT_DIR/${DESIGN_NAME}_syn.area"
report_timing        > "$REPORT_DIR/${DESIGN_NAME}_syn.timing"
report_power         > "$REPORT_DIR/${DESIGN_NAME}_syn.pow"
report_design        > "$REPORT_DIR/${DESIGN_NAME}_syn.design"
report_port -verbose > "$REPORT_DIR/${DESIGN_NAME}_syn.ports"
report_cell          > "$REPORT_DIR/${DESIGN_NAME}_syn.cells"

write -format verilog -hierarchy -output "$SRC_DIR/${DESIGN_NAME}_syn.v"
write_sdf "$SRC_DIR/${DESIGN_NAME}_syn.sdf"
write_sdc "$SRC_DIR/${DESIGN_NAME}_syn.sdc"
exit
