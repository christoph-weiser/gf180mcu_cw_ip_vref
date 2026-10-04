v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 0 0 -610 840 -610 840 0 0 0 {}
P 4 5 840 -80 840 -280 1120 -280 1120 -80 840 -80 {}
P 4 5 840 -280 840 -610 1120 -610 1120 -280 840 -280 {}
N 670 -170 670 -140 { lab=vss}
N 670 -260 670 -230 { lab=#net1}
N 220 -260 220 -240 { lab=in}
N 360 -260 410 -260 { lab=in}
N 670 -260 750 -260 { lab=#net1}
N 750 -260 750 -230 { lab=#net1}
N 750 -170 750 -140 { lab=vss}
N 60 -170 60 -140 { lab=vss}
N 60 -270 60 -230 { lab=vdd}
N 220 -180 220 -150 {
lab=vss}
N 220 -260 360 -260 {
lab=in}
N 640 -260 670 -260 {
lab=#net1}
N 460 -370 460 -310 {
lab=#net2}
N 530 -260 580 -260 {
lab=out}
C {devices/lab_wire.sym} 480 -300 3 1 {name=l6 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 220 -210 0 0 {name=vin value="dc 'vcm' sin('vcm' 'vcm*0.8' 1e3)"
}
C {devices/code.sym} 990 -220 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
value="* Control

.param vdd=3.3
.param vcm='vdd/2'
.param ib=5u
.param cl=10p
.param rl=1e6
.param rsw=20

.control
set wr_singlescale
set wr_vecnames
set filetype=ascii
*set interp

save all
tran 1u 1m
gnuplot p1 in out
*tran 1u 1000m
*wrdata output.csv out
.endc
"}
C {devices/isource.sym} 460 -400 0 0 {name=ib value='ib'
}
C {devices/capa.sym} 670 -200 0 0 {name=cl m=1 value='cl'
}
C {devices/lab_wire.sym} 670 -170 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 530 -260 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/res.sym} 750 -200 2 1 {name=rl m=1 value='rl'
}
C {devices/lab_wire.sym} 750 -170 3 0 {name=l17 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 840 0 0 0 {name=l15 author="Christoph Weiser"}
C {devices/vsource.sym} 60 -200 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 60 -110 0 0 {name=vss value=0
}
C {devices/gnd.sym} 60 -80 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 60 -270 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 60 -170 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 410 -260 0 0 {name=l4 sig_type=std_logic lab=in
}
C {devices/lab_wire.sym} 220 -180 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 460 -430 3 1 {name=l8 sig_type=std_logic lab=vdd}
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
C {devices/res.sym} 610 -260 3 1 {name=rsw m=1 value='rsw'
}
C {sch/testbuffer/testbuffer/testbuffer.sym} 560 -260 0 0 {name=xtb
}
C {devices/lab_wire.sym} 480 -220 3 0 {name=l5 sig_type=std_logic lab=vss}
