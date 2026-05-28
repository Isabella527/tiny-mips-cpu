set DESIGN_NAME  "alu"
set SRC_DIR      "./src"
set REPORT_DIR   "./reports/alu"

set target_library "/apps/design_kits/osu_stdcells_v2p7/synopsys/lib/ami05/osu05_stdcells.db"
set link_library   "* /apps/design_kits/osu_stdcells_v2p7/synopsys/lib/ami05/osu05_stdcells.db"
set symbol_library ""

analyze -library WORK -format verilog "$SRC_DIR/alucontrol.v"
analyze -library WORK -format verilog "$SRC_DIR/alu.v"

elaborate $DESIGN_NAME -architecture verilog -library WORK
link

set_max_delay 40 -from [all_inputs] -to [all_outputs]

compile -map_effort medium

file mkdir $REPORT_DIR
report_area          > "$REPORT_DIR/${DESIGN_NAME}_syn.area"
report_timing        > "$REPORT_DIR/${DESIGN_NAME}_syn.timing"
report_power         > "$REPORT_DIR/${DESIGN_NAME}_syn.pow"
report_design        > "$REPORT_DIR/${DESIGN_NAME}_syn.design"
report_port -verbose > "$REPORT_DIR/${DESIGN_NAME}_syn.ports"

write -format verilog -hierarchy -output "$SRC_DIR/${DESIGN_NAME}_syn.v"
write_sdf "$SRC_DIR/${DESIGN_NAME}_syn.sdf"
write_sdc "$SRC_DIR/${DESIGN_NAME}_syn.sdc"
exit
