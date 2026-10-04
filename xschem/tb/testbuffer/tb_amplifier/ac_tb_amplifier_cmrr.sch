v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1540 -80 1540 -280 1820 -280 1820 -80 1540 -80 {}
P 4 5 1540 -280 1540 -880 1820 -880 1820 -280 1540 -280 {}
P 4 5 0 0 0 -880 1540 -880 1540 0 0 0 {}
N 60 -130 60 -100 { lab=vss}
N 60 -230 60 -190 { lab=vdd}
N 650 -320 650 -290 { lab=vss}
N 650 -410 650 -380 { lab=out1}
N 650 -410 740 -410 { lab=out1}
N 740 -320 740 -290 { lab=vss}
N 740 -410 740 -380 { lab=out1}
N 360 -540 360 -460 {
lab=#net1}
N 610 -410 650 -410 {
lab=out1}
N 1330 -320 1330 -290 { lab=vss}
N 1330 -410 1330 -380 { lab=out2}
N 1330 -410 1420 -410 { lab=out2}
N 1420 -320 1420 -290 { lab=vss}
N 1420 -410 1420 -380 { lab=out2}
N 1050 -540 1050 -460 {
lab=#net2}
N 1290 -410 1330 -410 {
lab=out2}
N 1070 -370 1070 -340 { lab=vss}
N 1070 -480 1070 -450 { lab=vdd}
N 830 -310 830 -280 { lab=GND}
N 1120 -410 1220 -410 { lab=out_cm}
N 1220 -410 1230 -410 { lab=out_cm}
N 970 -380 1000 -380 { lab=in_cm}
N 970 -440 1000 -440 { lab=in_cm}
N 970 -440 970 -380 { lab=in_cm}
N 830 -410 970 -410 { lab=in_cm}
N 830 -410 830 -370 { lab=in_cm}
N 380 -370 380 -340 { lab=vss}
N 380 -480 380 -450 { lab=vdd}
N 280 -170 280 -140 { lab=vss}
N 180 -310 180 -280 { lab=GND}
N 280 -280 400 -280 { lab=#net3}
N 430 -410 530 -410 { lab=out_dm}
N 530 -410 530 -280 { lab=out_dm}
N 460 -280 530 -280 { lab=out_dm}
N 530 -410 550 -410 { lab=out_dm}
N 180 -440 180 -370 { lab=in_dm}
N 180 -440 310 -440 { lab=in_dm}
N 280 -380 280 -280 { lab=#net3}
N 280 -380 310 -380 { lab=#net3}
N 280 -270 280 -230 { lab=#net3}
N 280 -280 280 -270 { lab=#net3}
N 1090 -300 1170 -300 { lab=out_cm}
N 1170 -410 1170 -300 { lab=out_cm}
N 940 -300 1030 -300 { lab=in_cm}
N 940 -410 940 -300 { lab=in_cm}
C {devices/code.sym} 1690 -220 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
value="* Control 

.param vdd=3.3
.param vcm='vdd/2'
.param ib=5u
.param cl=10p
.param rl=1e6
.param rsw=1
.param vin='vcm'

.control
save all
ac dec 10 0.1 1e9
let cmrr_f=(out_dm/out_cm)
meas ac cmrr find vdb(cmrr_f) at=0.1
print cmrr
.endc
"}
C {devices/titleblock.sym} 1540 0 0 0 {name=l24 author="Christoph Weiser"}
C {devices/vsource.sym} 60 -160 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 60 -70 0 0 {name=vss value=0
}
C {devices/gnd.sym} 60 -40 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 60 -230 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 60 -130 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/code.sym} 1560 -220 0 0 {name=CORNERS_NG 
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
C {devices/capa.sym} 650 -350 0 0 {name=cl2 m=1 value='cl'
}
C {devices/lab_wire.sym} 650 -320 3 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 650 -410 0 1 {name=l12 sig_type=std_logic lab=out1
}
C {devices/isource.sym} 360 -570 0 0 {name=ib1 value='ib'
}
C {devices/res.sym} 740 -350 2 1 {name=rl3 m=1 value='rl'
}
C {devices/lab_wire.sym} 740 -320 3 0 {name=l22 sig_type=std_logic lab=vss}
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 460 -410 0 0 {name=xamp1
}
C {devices/lab_wire.sym} 360 -600 3 1 {name=l23 sig_type=std_logic lab=vdd}
C {devices/res.sym} 580 -410 3 1 {name=rsw4 m=1 value='rsw'
}
C {devices/capa.sym} 1330 -350 0 0 {name=cl3 m=1 value='cl'
}
C {devices/lab_wire.sym} 1330 -320 3 0 {name=l30 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 1330 -410 0 1 {name=l31 sig_type=std_logic lab=out2
}
C {devices/isource.sym} 1050 -570 0 0 {name=ib2 value='ib'
}
C {devices/res.sym} 1420 -350 2 1 {name=rl4 m=1 value='rl'
}
C {devices/lab_wire.sym} 1420 -320 3 0 {name=l33 sig_type=std_logic lab=vss}
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 1150 -410 0 0 {name=xamp2
}
C {devices/lab_wire.sym} 1050 -600 3 1 {name=l34 sig_type=std_logic lab=vdd}
C {devices/res.sym} 1260 -410 3 1 {name=rsw5 m=1 value='rsw'
}
C {devices/lab_wire.sym} 1070 -370 3 0 {name=l4 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 1070 -480 3 0 {name=l7 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 830 -340 0 0 {name=Vin value="dc 'vcm' ac 1"
}
C {devices/gnd.sym} 830 -280 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 830 -410 0 1 {name=l15 sig_type=std_logic lab=in_cm
}
C {devices/lab_wire.sym} 380 -370 3 0 {name=l17 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 380 -480 3 0 {name=l18 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 180 -340 0 0 {name=Vin3 value="dc 'vcm' ac 1"
}
C {devices/capa.sym} 280 -200 0 0 {name=c0 m=1 value=100
}
C {devices/lab_wire.sym} 280 -170 3 0 {name=l19 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 180 -280 0 0 {name=l20 lab=GND}
C {devices/res.sym} 430 -280 1 0 {name=r1 m=1 value=10e9 footprint=res10 device=resistor}
C {devices/lab_wire.sym} 430 -410 0 1 {name=l35 sig_type=std_logic lab=out_dm
}
C {devices/lab_wire.sym} 310 -440 0 0 {name=l36 sig_type=std_logic lab=in_dm
}
C {devices/lab_wire.sym} 1170 -410 0 1 {name=l38 sig_type=std_logic lab=out_cm
}
C {devices/res.sym} 1060 -300 1 0 {name=r5 m=1 value=10e9 footprint=res10 device=resistor}
