v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 760 -80 760 -280 1040 -280 1040 -80 760 -80 {}
P 4 5 760 -280 760 -520 1040 -520 1040 -280 760 -280 {}
P 4 5 760 -0 0 0 0 -520 760 -520 760 -0 {}
N 130 -260 130 -220 { lab=vss}
N 340 -350 370 -350 { lab=#net1}
N 340 -260 370 -260 { lab=vss}
N 520 -330 570 -330 {
lab=vbg}
N 130 -350 130 -320 {
lab=vdd}
N 270 -350 340 -350 {
lab=#net1}
N 130 -350 210 -350 {
lab=vdd}
N 570 -330 620 -330 {
lab=vbg}
N 620 -330 620 -280 {
lab=vbg}
C {devices/vsource.sym} 130 -290 0 0 {name=vdd value="DC 'vdd'"
}
C {devices/vsource.sym} 130 -200 0 0 {name=vss value=0
}
C {devices/gnd.sym} 130 -170 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 520 -330 0 1 {name=l5 sig_type=std_logic lab=vbg}
C {devices/lab_wire.sym} 130 -320 3 1 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 130 -260 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/code.sym} 910 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd = 3.3
.temp 27

.options reltol = 1e-6

.control

save all
*optran 0 0 0 100n 0.3m 0
ac dec 10 0.01 1e9

let psrr=(1/vbg)
let psrr_db = vdb(psrr)
gnuplot p1 psrr_db

meas ac psrr_dc find psrr_db at=0.01
meas ac psrr_1hz find psrr_db at=1
meas ac psrr_1khz find psrr_db at=1e3
meas ac psrr_10khz find psrr_db at=10e3
meas ac psrr_100khz find psrr_db at=100e3

print psrr_dc
print psrr_1hz
print psrr_1khz
print psrr_10khz
print psrr_100khz

set wr_singlescale
set wr_vecnames
wrdata data.csv psrr psrr_db

.endc
.end
" }
C {devices/lab_wire.sym} 370 -260 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 760 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/lab_wire.sym} 370 -310 0 0 {name=l3 sig_type=std_logic lab=vdd,7*(vss)
}
C {devices/noconn.sym} 520 -300 2 0 {name=l8}
C {devices/lab_wire.sym} 370 -290 0 0 {name=l11 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 240 -350 1 0 {name=vac value="DC 0 AC 1"
}
C {devices/capa.sym} 620 -250 0 0 {name=C1
m=1
value=10f
}
C {devices/lab_wire.sym} 620 -220 3 0 {name=l14 sig_type=std_logic lab=vss}
C {sch/bandgap_cm/bandgap/bandgap.sym} 390 -250 0 0 {name=xbg
schematic=sch/bandgap_cm/bandgap/bandgap.sch
}
C {devices/code.sym} 780 -220 0 0 {name=CORNERS_NG 
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
