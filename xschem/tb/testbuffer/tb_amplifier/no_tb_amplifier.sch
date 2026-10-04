v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 0 0 -700 990 -700 990 0 0 0 {}
P 4 5 990 -80 990 -280 1270 -280 1270 -80 990 -80 {}
P 4 5 990 -280 990 -700 1270 -700 1270 -280 990 -280 {}
N 510 -370 510 -340 { lab=vss}
N 510 -480 510 -450 { lab=vdd}
N 410 -170 410 -140 { lab=vss}
N 270 -310 270 -280 { lab=GND}
N 410 -280 530 -280 { lab=fb}
N 560 -410 660 -410 { lab=out}
N 660 -410 660 -280 { lab=out}
N 590 -280 660 -280 { lab=out}
N 270 -440 270 -370 { lab=in}
N 270 -440 440 -440 { lab=in}
N 410 -380 410 -280 { lab=fb}
N 410 -380 440 -380 { lab=fb}
N 410 -270 410 -230 { lab=fb}
N 410 -280 410 -270 { lab=fb}
N 490 -500 490 -460 { lab=#net1}
N 130 -290 130 -260 { lab=vss}
N 130 -390 130 -350 { lab=vdd}
N 700 -410 730 -410 {
lab=out}
N 660 -410 700 -410 {
lab=out}
N 810 -320 810 -290 { lab=vss}
N 810 -410 810 -380 { lab=#net2}
N 810 -410 890 -410 { lab=#net2}
N 890 -410 890 -380 { lab=#net2}
N 890 -320 890 -290 { lab=vss}
N 790 -410 810 -410 {
lab=#net2}
C {devices/lab_wire.sym} 510 -370 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 510 -480 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 270 -340 0 0 {name=vin value="dc 'vcm' ac 1"
}
C {devices/code.sym} 1140 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control 

.param vdd=3.3
.param vcm='vdd/2'
.param ib=5u
.param cl=1p
.param rl=10e6
.param rsw=1

.control
save all
noise v(out,vss) vin dec 10 0.1 1e6 1
print inoise_total
print onoise_total
setplot noise1
gnuplot p1 inoise_spectrum
gnuplot p2 onoise_spectrum
set wr_singlescale
set wr_vecnames
wrdata data.csv onoise_spectrum inoise_spectrum
.endc
"}
C {devices/capa.sym} 410 -200 0 0 {name=c0 m=1 value=1}
C {devices/lab_wire.sym} 410 -170 3 0 {name=l13 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 270 -280 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 440 -380 0 0 {name=l7 sig_type=std_logic lab=fb}
C {devices/res.sym} 560 -280 1 0 {name=r1 m=1 value=10e9 footprint=res10 device=resistor}
C {devices/lab_wire.sym} 560 -410 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 440 -440 0 0 {name=l12 sig_type=std_logic lab=in}
C {devices/isource.sym} 490 -530 0 0 {name=ib value='ib'
}
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 590 -410 0 0 {name=xamp
}
C {devices/titleblock.sym} 990 0 0 0 {name=l15 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/vsource.sym} 130 -320 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 130 -230 0 0 {name=vss value=0
}
C {devices/gnd.sym} 130 -200 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 130 -390 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 130 -290 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 490 -560 3 1 {name=l4 sig_type=std_logic lab=vdd}
C {devices/code.sym} 1010 -220 0 0 {name=CORNERS_NG 
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
C {devices/capa.sym} 810 -350 0 0 {name=cl m=1 value='cl' ic=0
}
C {devices/lab_wire.sym} 810 -320 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/res.sym} 890 -350 2 1 {name=rl m=1 value='rl'
}
C {devices/lab_wire.sym} 890 -320 3 0 {name=l17 sig_type=std_logic lab=vss}
C {devices/res.sym} 760 -410 3 1 {name=rsw m=1 value='rsw'
}
