###################################################################

# Created by write_sdc on Sun May 10 13:34:03 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
create_clock [get_ports clk]  -period 40  -waveform {0 20}
set_input_delay -clock clk  2  [get_ports reset]
set_input_delay -clock clk  2  [get_ports {op[5]}]
set_input_delay -clock clk  2  [get_ports {op[4]}]
set_input_delay -clock clk  2  [get_ports {op[3]}]
set_input_delay -clock clk  2  [get_ports {op[2]}]
set_input_delay -clock clk  2  [get_ports {op[1]}]
set_input_delay -clock clk  2  [get_ports {op[0]}]
set_input_delay -clock clk  2  [get_ports zero]
set_output_delay -clock clk  2  [get_ports memread]
set_output_delay -clock clk  2  [get_ports memwrite]
set_output_delay -clock clk  2  [get_ports alusrca]
set_output_delay -clock clk  2  [get_ports memtoreg]
set_output_delay -clock clk  2  [get_ports iord]
set_output_delay -clock clk  2  [get_ports pcen]
set_output_delay -clock clk  2  [get_ports regwrite]
set_output_delay -clock clk  2  [get_ports regdst]
set_output_delay -clock clk  2  [get_ports {pcsource[1]}]
set_output_delay -clock clk  2  [get_ports {pcsource[0]}]
set_output_delay -clock clk  2  [get_ports {alusrcb[1]}]
set_output_delay -clock clk  2  [get_ports {alusrcb[0]}]
set_output_delay -clock clk  2  [get_ports {aluop[1]}]
set_output_delay -clock clk  2  [get_ports {aluop[0]}]
set_output_delay -clock clk  2  [get_ports {irwrite[3]}]
set_output_delay -clock clk  2  [get_ports {irwrite[2]}]
set_output_delay -clock clk  2  [get_ports {irwrite[1]}]
set_output_delay -clock clk  2  [get_ports {irwrite[0]}]
