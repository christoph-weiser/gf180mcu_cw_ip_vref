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
N 730 -270 730 -250 {
lab=out}
N 90 -270 90 -240 {
lab=vss}
N 350 -190 350 -160 {
lab=vss}
N 350 -160 730 -160 {
lab=vss}
N 730 -190 730 -160 {
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
N 170 -240 260 -240 {
lab=vss}
N 260 -270 260 -240 {
lab=vss}
N 170 -360 170 -330 {
lab=va}
N 260 -360 260 -330 {
lab=vb}
N 350 -340 510 -340 {
lab=en}
N 350 -340 350 -250 {
lab=en}
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

.param va = 0.5
.param vb = 2.5

.control
save all

tran 1n 10u
gnuplot p1 out

.endc
.end
" }
C {devices/titleblock.sym} 840 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/vsource.sym} 350 -220 0 0 {name=vin value="dc 0 pulse(0 'vdd' 1u 1n 1n 5u 20u)"
}
C {devices/capa.sym} 730 -220 0 0 {name=C1
m=1
value=100f
ic=0
}
C {devices/lab_wire.sym} 350 -160 0 1 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 510 -340 0 0 {name=l4 sig_type=std_logic lab=en
}
C {devices/lab_wire.sym} 670 -340 0 1 {name=l5 sig_type=std_logic lab=out
}
C {sch/spdt/spdt/spdt.sym} 510 -270 0 0 {name=xsw
}
C {devices/lab_wire.sym} 590 -410 1 0 {name=l2 sig_type=std_logic lab=vdd
}
C {devices/vsource.sym} 170 -300 0 0 {name=va value='va'
}
C {devices/vsource.sym} 260 -300 0 0 {name=vb value='vb'
}
C {devices/lab_wire.sym} 170 -330 3 1 {name=l8 sig_type=std_logic lab=va
}
C {devices/lab_wire.sym} 260 -330 3 1 {name=l9 sig_type=std_logic lab=vb
}
C {devices/lab_wire.sym} 510 -360 0 0 {name=l11 sig_type=std_logic lab=va
}
C {devices/lab_wire.sym} 510 -320 0 0 {name=l12 sig_type=std_logic lab=vb
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
