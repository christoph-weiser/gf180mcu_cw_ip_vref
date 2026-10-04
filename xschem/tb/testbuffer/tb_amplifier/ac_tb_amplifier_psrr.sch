v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1540 -80 1540 -280 1820 -280 1820 -80 1540 -80 {}
P 4 5 1540 -280 1540 -700 1820 -700 1820 -280 1540 -280 {}
P 4 5 0 0 0 -700 1540 -700 1540 0 0 0 {}
N 420 -250 420 -220 { lab=vss}
N 420 -360 420 -330 { lab=#net1}
N 180 -190 180 -160 { lab=GND}
N 470 -290 570 -290 { lab=out_p}
N 570 -290 570 -160 { lab=out_p}
N 660 -200 660 -170 { lab=vss}
N 660 -290 660 -260 { lab=out_p}
N 570 -290 660 -290 { lab=out_p}
N 180 -320 180 -250 { lab=in_p}
N 180 -320 350 -320 { lab=in_p}
N 320 -260 320 -160 { lab=out_p}
N 320 -260 350 -260 { lab=out_p}
N 400 -380 400 -340 { lab=bias_p}
N 750 -200 750 -170 { lab=vss}
N 750 -290 750 -260 { lab=out_p}
N 400 -470 400 -380 { lab=bias_p}
N 320 -160 570 -160 { lab=out_p}
N 540 -440 540 -420 { lab=#net1}
N 420 -440 540 -440 { lab=#net1}
N 420 -440 420 -360 { lab=#net1}
N 1130 -250 1130 -220 { lab=#net2}
N 1130 -360 1130 -330 { lab=vdd}
N 890 -190 890 -160 { lab=GND}
N 1180 -290 1280 -290 { lab=out_n}
N 1280 -290 1280 -160 { lab=out_n}
N 1370 -200 1370 -170 { lab=vss}
N 1370 -290 1370 -260 { lab=out_n}
N 1280 -290 1370 -290 { lab=out_n}
N 890 -320 890 -250 { lab=in_n}
N 890 -320 1060 -320 { lab=in_n}
N 1030 -260 1030 -160 { lab=out_n}
N 1030 -260 1060 -260 { lab=out_n}
N 1110 -380 1110 -340 { lab=bias_n}
N 1370 -290 1460 -290 { lab=out_n}
N 1460 -200 1460 -170 { lab=vss}
N 1460 -290 1460 -260 { lab=out_n}
N 1110 -470 1110 -380 { lab=bias_n}
N 1030 -160 1280 -160 { lab=out_n}
N 1130 -220 1130 -190 { lab=#net2}
N 1130 -190 1140 -190 { lab=#net2}
N 1200 -190 1240 -190 { lab=vss}
N 540 -360 540 -320 { lab=vdd}
N 80 -160 80 -130 { lab=vss}
N 80 -260 80 -220 { lab=vdd}
N 660 -290 750 -290 {
lab=out_p}
C {devices/code.sym} 1690 -220 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
value="* Control 

.param vdd=3.3
.param vcm='vdd/2'
.param ib=5u
.param cl=10p
.param rl=10e6

.control
save all
ac dec 10 0.1 1e9
let psrr_p=(1/out_p)
let psrr_n=(1/out_n)
gnuplot p1 vdb(psrr_p)
gnuplot p2 vdb(psrr_n)
meas ac psrr_p_1    FIND vdb(psrr_p) AT=1
meas ac psrr_p_10   FIND vdb(psrr_p) AT=10
meas ac psrr_p_100  FIND vdb(psrr_p) AT=100
meas ac psrr_p_1k   FIND vdb(psrr_p) AT=1e3
meas ac psrr_p_10k  FIND vdb(psrr_p) AT=10e3
meas ac psrr_n_1    FIND vdb(psrr_n) AT=1
meas ac psrr_n_10   FIND vdb(psrr_n) AT=10
meas ac psrr_n_100  FIND vdb(psrr_n) AT=100
meas ac psrr_n_1k   FIND vdb(psrr_n) AT=1e3
meas ac psrr_n_10k  FIND vdb(psrr_n) AT=10e3
set wr_singlescale
set wr_vecnames
wrdata data.csv vdb(psrr_p) vdb(psrr_n)
.endc
"}
C {devices/lab_wire.sym} 420 -250 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/vsource.sym} 180 -220 0 0 {name=vin1 value='vcm'
}
C {devices/gnd.sym} 180 -160 0 0 {name=l17 lab=GND}
C {devices/capa.sym} 660 -230 0 0 {name=cl1 m=1 value='cl'
}
C {devices/lab_wire.sym} 660 -200 3 0 {name=l19 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 470 -290 0 1 {name=l23 sig_type=std_logic lab=out_p
}
C {devices/lab_wire.sym} 350 -320 0 0 {name=l27 sig_type=std_logic lab=in_p
}
C {devices/res.sym} 750 -230 2 1 {name=rl1 m=1 value='rl'
}
C {devices/lab_wire.sym} 750 -200 3 0 {name=l28 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 400 -420 3 0 {name=l29 sig_type=std_logic lab=bias_p
}
C {devices/isource.sym} 400 -500 0 0 {name=ib1 value='ib'
}
C {devices/vsource.sym} 540 -390 0 0 {name=vdd_sig value="ac 1"
}
C {devices/vsource.sym} 890 -220 0 0 {name=vin2 value='vcm'
}
C {devices/gnd.sym} 890 -160 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 1370 -230 0 0 {name=cl2 m=1 value='cl'
}
C {devices/lab_wire.sym} 1370 -200 3 0 {name=l8 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 1180 -290 0 1 {name=l9 sig_type=std_logic lab=out_n
}
C {devices/lab_wire.sym} 1060 -320 0 0 {name=l10 sig_type=std_logic lab=in_n
}
C {devices/res.sym} 1460 -230 2 1 {name=rl2 m=1 value='rl'
}
C {devices/lab_wire.sym} 1460 -200 3 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 1110 -420 3 0 {name=l12 sig_type=std_logic lab=bias_n
}
C {devices/isource.sym} 1110 -500 0 0 {name=ib2 value='ib'
}
C {devices/lab_wire.sym} 1130 -360 3 0 {name=l22 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 1170 -190 1 0 {name=vss_sig value="ac 1"
}
C {devices/lab_wire.sym} 1230 -190 0 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 540 -360 1 1 {name=l21 sig_type=std_logic lab=vdd}
C {devices/titleblock.sym} 1540 0 0 0 {name=l24 author="Christoph Weiser"}
C {devices/vsource.sym} 80 -190 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 80 -100 0 0 {name=vss value=0
}
C {devices/gnd.sym} 80 -70 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 80 -260 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 80 -160 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 400 -530 3 1 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1110 -530 3 1 {name=l13 sig_type=std_logic lab=vdd}
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
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 500 -290 0 0 {name=xamp1
}
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 1210 -290 0 0 {name=xamp2
}
