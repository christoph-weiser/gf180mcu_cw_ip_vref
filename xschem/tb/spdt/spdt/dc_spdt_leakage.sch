v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 840 -80 840 -280 1120 -280 1120 -80 840 -80 {}
P 4 5 840 -280 840 -560 1120 -560 1120 -280 840 -280 {}
P 4 5 840 0 0 0 0 -560 840 -560 840 0 {}
N 90 -360 90 -330 {
lab=vdd}
N 90 -270 90 -240 {
lab=vss}
N 730 -340 730 -270 {
lab=out}
N 670 -340 730 -340 {
lab=out}
N 590 -270 590 -160 {
lab=vss}
N 90 -240 170 -240 {
lab=vss}
N 170 -270 170 -240 {
lab=vss}
N 170 -360 170 -330 {
lab=vin}
N 590 -160 730 -160 {
lab=vss}
N 730 -210 730 -160 {
lab=vss}
N 450 -320 510 -320 {
lab=vss}
N 450 -320 450 -160 {
lab=vss}
N 450 -160 590 -160 {
lab=vss}
C {devices/vsource.sym} 90 -300 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 90 -210 0 0 {name=vss value=0
}
C {devices/gnd.sym} 90 -180 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 90 -330 3 1 {name=l6 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} 90 -270 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/code.sym} 990 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd = 3.3

.temp 27

.save vin#branch
.save vmo#branch

.control
save all

dc vin 0 1.5 0.01

let iin  = abs(vin#branch)
let iout = abs(vmo#branch)

meas dc iin_max max iin
meas dc iout_max max iout

gnuplot p1 iin

set wr_singlescale
set wr_vecnames
wrdata data.csv iin iout

.endc
.end
" }
C {devices/titleblock.sym} 840 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/lab_wire.sym} 670 -340 0 1 {name=l5 sig_type=std_logic lab=out
}
C {sch/spdt/spdt/spdt.sym} 510 -270 0 0 {name=xsw
}
C {devices/lab_wire.sym} 590 -410 1 0 {name=l2 sig_type=std_logic lab=vdd
}
C {devices/vsource.sym} 170 -300 0 0 {name=vin value=0
}
C {devices/lab_wire.sym} 170 -330 3 1 {name=l8 sig_type=std_logic lab=vin
}
C {devices/lab_wire.sym} 510 -360 0 0 {name=l11 sig_type=std_logic lab=vin
}
C {devices/code.sym} 860 -220 0 0 {name=CORNERS_NG 
only_toplevel=false
spice_ignore="tcleval([if \{$cmdline_ignore == true\} \{return \{true\}\} else \{return \{false\}\}])"
format="tcleval( @value )"
value="* Model Corners

.include \\\\$::CORNERS\\\\/ngspice/tt.spice
*.include \\\\$::CORNERS\\\\/ngspice/ff.spice
*.include \\\\$::CORNERS\\\\/ngspice/ss.spice
*.include \\\\$::CORNERS\\\\/ngspice/sf.spice
*.include \\\\$::CORNERS\\\\/ngspice/fs.spice
"}
C {devices/lab_wire.sym} 590 -160 0 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 510 -340 0 0 {name=l4 sig_type=std_logic lab=vss
}
C {devices/vsource.sym} 730 -240 0 0 {name=vmo value=0
}
