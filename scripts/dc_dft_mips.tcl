# ============================================================
# ECE 6250 — MIPS CPU DFT / Scan Insertion Script
# Run AFTER dc_syn_cpu.tcl has completed successfully
# ============================================================

set DESIGN_NAME  "mips"
set SRC_DIR      "./src"
set REPORT_DIR   "./reports/cpu"
set DB_DIR       "./db"

# --- Libraries (same as synthesis + scan library) -----------
set target_library "/apps/design_kits/osu_stdcells_v2p7/synopsys/lib/ami05/osu05_stdcells.db"
set link_library   "* /apps/design_kits/osu_stdcells_v2p7/synopsys/lib/ami05/osu05_stdcells.db"
set symbol_library ""

# --- Re-read the synthesized netlist from Lab 4 -------------
# We start from the gate-level netlist, not the RTL
read_verilog "$SRC_DIR/mips_syn.v"
current_design $DESIGN_NAME
link

# ============================================================
# PART 1 — Setup DFT variables (from slide step 2)
# ============================================================
set dft_runname       scan
set scan_library      [list "$DB_DIR/osu_scan.db"]
set scancell          DFFPOSX1_SCAN

# Timing variables for dft_drc
set test_default_delay        0
set test_default_bidir_delay  0
set test_default_strobe       40
set test_default_period       100

# Scan style — multiplexed flip-flop (as shown in slides)
set test_default_scan_style   multiplexed_flip_flop

# ============================================================
# PART 2 — Insert test structures (from slide step 3)
# ============================================================

# Update filebase name
set filebase [format "%s%s" [format "%s%s" $DESIGN_NAME "_"] $dft_runname]

# Add scan library to target
set target_library [list $target_library $scan_library]

# Set the scan cell type to use
set_scan_register_type -type ${scancell}

# Create dedicated scan_out ports
set_scan_configuration -create_dedicated_scan_out_ports true

# Infer clock and reset, run DFT DRC check
create_test_protocol -infer_async -infer_clock
dft_drc -verbose

# Replace flip-flops with multiplexed scan flip-flops
compile -scan

# Check for constraint violations after scan insertion
report_constraint -all_violators

# ============================================================
# PART 3 — Build the scan chain (from slide step 4)
# ============================================================

# Wire all scan-enabled FFs together into a chain
# This creates two new ports: test_si and test_se
insert_dft

# Set drive strength on new test ports
set_drive 2 test_si
set_drive 2 test_se

# Don't re-replace FFs, just apply drive constraints
set_scan_configuration -replace false
insert_dft

# Check constraints again after wiring
report_constraint -all_violators

# ============================================================
# PART 4 — Reports and output (from slide step 5)
# ============================================================

# Violations report
set filename [format "%s%s%s" "./reports/" $filebase ".violators"]
redirect $filename { report_constraint -all_violators }

# DFT DRC coverage report
set filename [format "%s%s%s" "./reports/" $filebase ".dft_drc"]
redirect $filename { dft_drc -verbose -coverage_estimate }

# Scan path report
set filename [format "%s%s%s" "./reports/" $filebase ".scan_path"]
redirect $filename { report_scan_path -view existing -chain all }

# Cell report
set filename [format "%s%s%s" "./reports/" $filebase ".cell"]
redirect $filename { report_cell }

# Write test protocol (.spf file for TetraMax)
set filename [format "%s%s%s" "./src/" $filebase ".spf"]
write_test_protocol -output $filename

# Write scan-inserted gate-level Verilog
set filename [format "%s%s%s" "./src/" $filebase ".v"]
redirect change_names { change_names -rules verilog -hierarchy -verbose }
write -format verilog -hierarchy -output $filename

echo "=== DFT scan insertion complete ==="
echo "=== Scan netlist: $SRC_DIR/${filebase}.v ==="
echo "=== Reports in: $REPORT_DIR ==="
exit
