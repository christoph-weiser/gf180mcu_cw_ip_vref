v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 0 0 -650 1070 -650 1070 0 0 0 {}
P 4 5 1070 -80 1070 -280 1350 -280 1350 -80 1070 -80 {}
P 4 5 1070 -280 1070 -650 1350 -650 1350 -280 1070 -280 {}
N 90 -180 90 -150 { lab=vss}
N 90 -280 90 -240 { lab=vdd}
N 530 -310 530 -280 { lab=vss}
N 530 -420 530 -390 { lab=vdd}
N 430 -150 430 -120 { lab=vss}
N 270 -250 270 -220 { lab=GND}
N 430 -240 550 -240 { lab=fb}
N 580 -350 640 -350 { lab=#net1}
N 640 -350 640 -240 { lab=#net1}
N 610 -240 640 -240 { lab=#net1}
N 780 -260 780 -230 { lab=vss}
N 780 -350 780 -320 { lab=out}
N 270 -380 270 -310 { lab=#net2}
N 270 -380 360 -380 { lab=#net2}
N 430 -320 430 -240 { lab=fb}
N 430 -320 460 -320 { lab=fb}
N 430 -230 430 -210 { lab=fb}
N 430 -240 430 -230 { lab=fb}
N 780 -350 870 -350 { lab=out}
N 870 -260 870 -230 { lab=vss}
N 870 -350 870 -320 { lab=out}
N 510 -480 510 -400 {
lab=#net3}
N 640 -350 680 -350 {
lab=#net1}
N 740 -350 780 -350 {
lab=out}
N 420 -380 460 -380 {
lab=in}
C {devices/code.sym} 1220 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd=3.3
.param vcm='vdd/2'
.param vin='vcm'
.param ib=5u
.param cl=10p
.param rl=1e6
.param rsw=1

.control

ac dec 100 1 1e9

meas ac fbw when vdb(in)=-3
let cin = 1/(2*PI*1e6*fbw)

print cin
gnuplot p1 vdb(in)

.endc
"}
C {devices/titleblock.sym} 1070 0 0 0 {name=l14 author="Christoph Weiser"}
C {devices/vsource.sym} 90 -210 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 90 -120 0 0 {name=vss value=0
}
C {devices/gnd.sym} 90 -90 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 90 -280 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 90 -180 3 0 {name=l15 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 530 -310 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 530 -420 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 270 -280 0 0 {name=vin value="dc 'vin' ac 1"
}
C {devices/capa.sym} 430 -180 0 0 {name=c0 m=1 value=1}
C {devices/lab_wire.sym} 430 -150 3 0 {name=l13 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 270 -220 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 460 -320 0 0 {name=l7 sig_type=std_logic lab=fb}
C {devices/res.sym} 580 -240 1 0 {name=r1 m=1 value=10e9 footprint=res10 device=resistor}
C {devices/capa.sym} 780 -290 0 0 {name=cl m=1 value='cl'
}
C {devices/lab_wire.sym} 780 -260 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 780 -350 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 460 -380 0 0 {name=l12 sig_type=std_logic lab=in}
C {devices/isource.sym} 510 -510 0 0 {name=ib value='ib'
}
C {devices/res.sym} 870 -290 2 1 {name=rl m=1 value='rl'
}
C {devices/lab_wire.sym} 870 -260 3 0 {name=l9 sig_type=std_logic lab=vss}
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 610 -350 0 0 {name=xamp
}
C {devices/lab_wire.sym} 510 -540 3 1 {name=l3 sig_type=std_logic lab=vdd}
C {devices/res.sym} 710 -350 3 1 {name=rsw m=1 value='rsw'
}
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
C {devices/res.sym} 390 -380 1 0 {name=r2 m=1 value=1e6
}
