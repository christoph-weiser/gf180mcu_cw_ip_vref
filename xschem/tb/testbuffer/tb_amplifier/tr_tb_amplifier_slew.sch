v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 -0 -0 -700 990 -700 990 -0 -0 -0 {}
P 4 5 990 -80 990 -280 1270 -280 1270 -80 990 -80 {}
P 4 5 990 -280 990 -700 1270 -700 1270 -280 990 -280 {}
N 580 -350 580 -320 { lab=vss}
N 580 -460 580 -430 { lab=vdd}
N 560 -530 560 -440 { lab=bias}
N 560 -340 560 -310 { lab=vdd}
N 630 -390 710 -390 { lab=out}
N 710 -390 710 -250 { lab=out}
N 820 -300 820 -270 { lab=vss}
N 820 -390 820 -360 { lab=#net1}
N 480 -360 480 -250 { lab=out}
N 480 -360 510 -360 { lab=out}
N 400 -340 400 -310 { lab=GND}
N 400 -420 400 -400 { lab=in}
N 400 -420 450 -420 { lab=in}
N 460 -420 510 -420 { lab=in}
N 820 -390 900 -390 { lab=#net1}
N 900 -390 900 -360 { lab=#net1}
N 900 -300 900 -270 { lab=vss}
N 480 -250 710 -250 { lab=out}
N 450 -420 460 -420 { lab=in}
N 80 -150 80 -120 { lab=vss}
N 80 -250 80 -210 { lab=vdd}
N 800 -390 820 -390 {
lab=#net1}
N 710 -390 740 -390 {
lab=out}
C {devices/lab_wire.sym} 580 -350 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 580 -460 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/code.sym} 1140 -220 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
value="* Control 

.param vdd=3.3
.param vcm='vdd/2'
.param ib=5u
.param cl=10p
.param rl=1e6
.param rsw=1

.control
save all

tran 100n 60u uic


meas tran vsupply find v(vdd) at=1u

let vmeas_max=vsupply/2+0.2
let vmeas_min=vsupply/2-0.2


meas tran td_pos TRIG v(out) VAL=vmeas_min RISE=2 TARG v(out) VAL=vmeas_max RISE=2
meas tran td_neg TRIG v(out) VAL=vmeas_max FALL=2 TARG v(out) VAL=vmeas_min FALL=2

let sr_pos=(vmeas_max-vmeas_min)/td_pos
let sr_neg=(vmeas_max-vmeas_min)/td_neg

print sr_pos
print sr_neg

set wr_singlescale
set wr_vecnames
wrdata data.csv out

.endc
"}
C {devices/lab_wire.sym} 560 -480 3 0 {name=l16 sig_type=std_logic lab=bias}
C {devices/isource.sym} 560 -560 0 0 {name=ib value='ib'
}
C {devices/lab_wire.sym} 560 -340 3 0 {name=l9 sig_type=std_logic lab=vdd}
C {devices/capa.sym} 820 -330 0 0 {name=cl m=1 value='cl' ic=0
}
C {devices/lab_wire.sym} 820 -300 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 630 -390 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/vsource.sym} 400 -370 0 1 {name=vin value="dc 0 pulse('0.1*vdd' '0.9*vdd' 10u 0.1n 0.1u 10u 20u)"
}
C {devices/gnd.sym} 400 -310 0 0 {name=l7 lab=GND}
C {devices/res.sym} 900 -330 2 1 {name=rl m=1 value='rl'
}
C {devices/lab_wire.sym} 900 -300 3 0 {name=l17 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 990 0 0 0 {name=l8 author="Christoph Weiser"}
C {devices/vsource.sym} 80 -180 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 80 -90 0 0 {name=vss value=0
}
C {devices/gnd.sym} 80 -60 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 80 -250 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 80 -150 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 510 -420 0 0 {name=l4 sig_type=std_logic lab=in
}
C {devices/lab_wire.sym} 560 -590 3 1 {name=l12 sig_type=std_logic lab=vdd}
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 660 -390 0 0 {name=xamp
}
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
C {devices/res.sym} 770 -390 3 1 {name=rsw m=1 value='rsw'
}
