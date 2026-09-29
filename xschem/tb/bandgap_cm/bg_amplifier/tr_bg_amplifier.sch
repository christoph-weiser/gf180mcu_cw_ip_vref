v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1070 -80 1070 -280 1350 -280 1350 -80 1070 -80 {}
P 4 5 0 0 0 -650 1070 -650 1070 0 0 0 {}
P 4 5 1070 -280 1070 -650 1350 -650 1350 -280 1070 -280 {}
N 640 -340 640 -310 { lab=vss}
N 640 -450 640 -420 { lab=vdd}
N 690 -380 760 -380 { lab=out}
N 760 -380 760 -180 { lab=out}
N 820 -290 820 -260 { lab=vss}
N 820 -380 820 -350 { lab=out}
N 760 -380 820 -380 { lab=out}
N 540 -350 540 -180 { lab=out}
N 540 -350 570 -350 { lab=out}
N 460 -410 460 -390 { lab=in}
N 520 -410 570 -410 { lab=in}
N 540 -180 760 -180 { lab=out}
N 190 -300 190 -270 { lab=vss}
N 190 -400 190 -360 { lab=vdd}
N 460 -330 460 -300 {
lab=vss}
N 460 -410 520 -410 {
lab=in}
N 640 -340 640 -310 { lab=vss}
N 620 -330 620 -290 {
lab=bias}
C {devices/lab_wire.sym} 640 -340 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/vsource.sym} 460 -360 0 1 {name=vin value="dc 'vcm' sin('vcm' 'vsig' 'fin')"
}
C {devices/code.sym} 1220 -220 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
value="* control 

.param vdd=3.3
.param vcm='vdd/2'
.param ib=1u
.param cl=1p
.param fin=1e3
.param vsig='vdd/2'

.control

save all
tran 1u 1m
gnuplot p1 in out
set wr_singlescale
set wr_vecnames
wrdata output.csv in out
.endc
"}
C {devices/capa.sym} 820 -320 0 0 {name=cl m=1 value='cl'
}
C {devices/lab_wire.sym} 820 -290 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 690 -380 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/vsource.sym} 190 -330 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 190 -240 0 0 {name=vss value=0
}
C {devices/gnd.sym} 190 -210 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 190 -400 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 190 -300 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 570 -410 0 0 {name=l4 sig_type=std_logic lab=in
}
C {devices/lab_wire.sym} 460 -330 3 0 {name=l7 sig_type=std_logic lab=vss}
C {sch/bandgap_cm/bg_amplifier/bg_amplifier.sym} 720 -380 0 0 {name=xamp
}
C {devices/lab_wire.sym} 640 -450 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/code.sym} 1090 -220 0 0 {name=CORNERS_NG 
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
C {devices/isource.sym} 620 -260 0 0 {name=ib value='ib'
}
C {devices/lab_wire.sym} 620 -330 3 0 {name=l17 sig_type=std_logic lab=bias
}
C {devices/lab_wire.sym} 620 -230 3 0 {name=l8 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 1070 0 0 0 {name=l14 author="Christoph Weiser"}
C {devices/code.sym} 1150 -510 0 0 {name=EXT 
only_toplevel=false
format="tcleval( @value )"
value="* extract

* pex
*.include \\\\$::DESIGN_PATH\\\\/sch/bandgap_cm/bg_amplifier/bg_amplifier.pex.spice
"}
