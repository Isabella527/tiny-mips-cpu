###################################################################

# Created by write_sdc on Sun May 10 13:32:14 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_delay 40  -from [list [get_ports {a[7]}] [get_ports {a[6]}] [get_ports {a[5]}]          \
[get_ports {a[4]}] [get_ports {a[3]}] [get_ports {a[2]}] [get_ports {a[1]}]    \
[get_ports {a[0]}] [get_ports {b[7]}] [get_ports {b[6]}] [get_ports {b[5]}]    \
[get_ports {b[4]}] [get_ports {b[3]}] [get_ports {b[2]}] [get_ports {b[1]}]    \
[get_ports {b[0]}] [get_ports {alucont[2]}] [get_ports {alucont[1]}]           \
[get_ports {alucont[0]}]]  -to [list [get_ports {result[7]}] [get_ports {result[6]}] [get_ports          \
{result[5]}] [get_ports {result[4]}] [get_ports {result[3]}] [get_ports        \
{result[2]}] [get_ports {result[1]}] [get_ports {result[0]}]]
