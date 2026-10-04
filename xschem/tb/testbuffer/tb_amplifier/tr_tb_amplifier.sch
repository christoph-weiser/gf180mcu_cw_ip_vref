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
N 420 -190 420 -160 { lab=vss}
N 420 -300 420 -270 { lab=vdd}
N 400 -370 400 -280 { lab=#net1}
N 400 -180 400 -150 { lab=vdd}
N 470 -230 540 -230 { lab=out}
N 540 -230 540 -100 { lab=out}
N 660 -140 660 -110 { lab=vss}
N 660 -230 660 -200 { lab=#net2}
N 320 -200 320 -100 { lab=out}
N 320 -200 350 -200 { lab=out}
N 160 -260 160 -240 { lab=in}
N 300 -260 350 -260 { lab=in}
N 660 -230 740 -230 { lab=#net2}
N 740 -230 740 -200 { lab=#net2}
N 740 -140 740 -110 { lab=vss}
N 320 -100 540 -100 { lab=out}
N 60 -170 60 -140 { lab=vss}
N 60 -270 60 -230 { lab=vdd}
N 160 -180 160 -150 {
lab=vss}
N 160 -260 300 -260 {
lab=in}
N 630 -230 660 -230 {
lab=#net2}
N 540 -230 570 -230 {
lab=out}
C {devices/lab_wire.sym} 420 -190 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 420 -300 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 160 -210 0 0 {name=vin value="dc 'vcm' sin('vcm' 'vin' fin)"
}
C {devices/code.sym} 990 -220 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
value="* Control

.param vdd=3.3
.param vcm='vdd/2'
.param vin='0.1*vdd'
.param fin=10k
.param ib=5u
.param cl=10p
.param rl=1e6
.param rsw=1

.control

save all
tran 1u 3.7m
gnuplot p1 in out

meas tran out_max max v(out)
meas tran out_min min v(out)
print out_max
print out_min
set wr_singlescale
set wr_vecnames
wrdata data.csv out
.endc
"}
C {devices/isource.sym} 400 -400 0 0 {name=ib value='ib'
}
C {devices/lab_wire.sym} 400 -180 3 0 {name=l9 sig_type=std_logic lab=vdd}
C {devices/capa.sym} 660 -170 0 0 {name=cl m=1 value='cl'
}
C {devices/lab_wire.sym} 660 -140 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 470 -230 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/res.sym} 740 -170 2 1 {name=rl m=1 value='rl'
}
C {devices/lab_wire.sym} 740 -140 3 0 {name=l17 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 840 0 0 0 {name=l15 author="Christoph Weiser"}
C {devices/vsource.sym} 60 -200 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 60 -110 0 0 {name=vss value=0
}
C {devices/gnd.sym} 60 -80 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 60 -270 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 60 -170 3 0 {name=l3 sig_type=std_logic lab=vss}
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 500 -230 0 0 {name=xamp
}
C {devices/lab_wire.sym} 350 -260 0 0 {name=l4 sig_type=std_logic lab=in
}
C {devices/lab_wire.sym} 160 -180 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 400 -430 3 1 {name=l8 sig_type=std_logic lab=vdd}
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
C {devices/res.sym} 600 -230 3 1 {name=rsw m=1 value='rsw'
}
