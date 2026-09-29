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
N 630 -390 630 -360 { lab=vss}
N 630 -500 630 -470 { lab=vdd}
N 680 -430 760 -430 { lab=out}
N 760 -430 760 -230 { lab=out}
N 810 -340 810 -310 { lab=vss}
N 810 -430 810 -400 { lab=out}
N 530 -400 530 -230 { lab=out}
N 530 -400 560 -400 { lab=out}
N 450 -380 450 -350 { lab=GND}
N 450 -460 450 -440 { lab=in}
N 450 -460 500 -460 { lab=in}
N 510 -460 560 -460 { lab=in}
N 530 -230 760 -230 { lab=out}
N 500 -460 510 -460 { lab=in}
N 90 -340 90 -310 { lab=vss}
N 90 -440 90 -400 { lab=vdd}
N 790 -430 810 -430 {
lab=out}
N 760 -430 790 -430 {
lab=out}
N 610 -380 610 -340 {
lab=bias}
C {devices/lab_wire.sym} 630 -390 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 630 -500 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/code.sym} 1220 -220 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
value="* Control 

.param vdd=3.3
.param vcm='vdd/2'
.param ib=1u
.param cl=10p

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
C {devices/capa.sym} 810 -370 0 0 {name=cl m=1 value='cl' ic=0
}
C {devices/lab_wire.sym} 810 -340 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 680 -430 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/vsource.sym} 450 -410 0 1 {name=vin value="dc 0 pulse('0.1*vdd' '0.9*vdd' 10u 0.1n 0.1u 10u 20u)"
}
C {devices/gnd.sym} 450 -350 0 0 {name=l7 lab=GND}
C {devices/titleblock.sym} 1070 0 0 0 {name=l8 author="Christoph Weiser"}
C {devices/vsource.sym} 90 -370 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 90 -280 0 0 {name=vss value=0
}
C {devices/gnd.sym} 90 -250 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 90 -440 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 90 -340 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 560 -460 0 0 {name=l4 sig_type=std_logic lab=in
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
C {devices/isource.sym} 610 -310 0 0 {name=ib value='ib'
}
C {devices/lab_wire.sym} 610 -380 3 0 {name=l17 sig_type=std_logic lab=bias
}
C {devices/lab_wire.sym} 610 -280 3 0 {name=l12 sig_type=std_logic lab=vss}
C {sch/bandgap_cm/bg_amplifier/bg_amplifier.sym} 710 -430 0 0 {name=xamp
}
C {devices/code.sym} 1150 -510 0 0 {name=EXT 
only_toplevel=false
format="tcleval( @value )"
value="* extract

* pex
*.include \\\\$::DESIGN_PATH\\\\/sch/bandgap_cm/bg_amplifier/bg_amplifier.pex.spice
"}
