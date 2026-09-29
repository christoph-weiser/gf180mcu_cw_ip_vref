v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1110 -80 1110 -280 1390 -280 1390 -80 1110 -80 {}
P 4 5 1110 -280 1110 -680 1390 -680 1390 -280 1110 -280 {}
P 4 5 1110 0 0 0 0 -680 1110 -680 1110 0 {}
P 4 5 1110 -280 1110 -480 1390 -480 1390 -280 1110 -280 {}
N 80 -150 80 -110 { lab=vss}
N 80 -240 80 -210 {
lab=vdd}
N 260 -100 260 -60 {lab=GND}
N 540 -400 570 -400 { lab=vdd}
N 540 -310 570 -310 { lab=vss}
N 720 -380 750 -380 {
lab=vbg}
N 480 -360 570 -360 {
lab=trim[7:0]}
C {devices/vsource.sym} 80 -90 0 0 {name=vss value=0
}
C {devices/gnd.sym} 80 -60 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 80 -210 3 1 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 80 -150 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/code.sym} 1260 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd = 3.3
.param cl=500e-15

.temp = 27
.options reltol = 1e-3

.control

save all
tran 1u 12.85m
gnuplot p1 vbg

.endc
.end
" }
C {devices/titleblock.sym} 1110 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/vsource.sym} 80 -180 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 260 -130 0 0 {name=Vclk value="DC 0 PULSE(0 'vdd' 100e-6 1e-9 1e-9 25e-6 50e-6)"
}
C {devices/lab_wire.sym} 260 -160 3 1 {name=l31 sig_type=std_logic lab=clk}
C {devices/gnd.sym} 260 -60 0 0 {name=l32 lab=GND}
C {devices/code.sym} 1190 -430 0 0 {name=INCLUDES 
only_toplevel=false
spice_ignore="tcleval([if \{$cmdline_ignore == true\} \{return \{true\}\} else \{return \{false\}\}])"
format="tcleval( @value )"
value="* Includes
.include \\\\$::DESIGN_PATH\\\\/xschem/digital/cmos_cells_digital.sp
.include \\\\$::DESIGN_PATH\\\\/xschem/digital/counter_8b/counter_8b.sp
"}
C {sch/bandgap_cm/bandgap/bandgap.sym} 590 -300 0 0 {name=xbg
schematic=sch/bandgap_cm/bandgap/bandgap.sch
}
C {devices/lab_wire.sym} 720 -380 0 1 {name=l5 sig_type=std_logic lab=vbg}
C {devices/lab_wire.sym} 570 -400 0 0 {name=l9 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 570 -310 0 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/noconn.sym} 750 -380 2 0 {name=l18}
C {xschem/digital/counter_8b/counter_8b.sym} 350 -330 0 0 {name=xcnt
}
C {devices/lab_wire.sym} 350 -380 0 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 350 -360 0 0 {name=l3 sig_type=std_logic lab=clk}
C {devices/lab_wire.sym} 350 -400 0 0 {name=l4 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 480 -360 0 1 {name=l8 sig_type=std_logic lab=trim[7:0]
}
C {devices/noconn.sym} 720 -350 2 0 {name=l12}
C {devices/lab_wire.sym} 570 -340 0 0 {name=l13 sig_type=std_logic lab=vdd}
C {devices/code.sym} 1130 -220 0 0 {name=CORNERS_NG 
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
