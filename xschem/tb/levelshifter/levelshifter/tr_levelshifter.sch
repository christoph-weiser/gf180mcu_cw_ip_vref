v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 760 -80 760 -280 1040 -280 1040 -80 760 -80 {}
P 4 5 760 -280 760 -520 1040 -520 1040 -280 760 -280 {}
P 4 5 760 -0 0 0 0 -520 760 -520 760 -0 {}
N 90 -350 90 -320 {
lab=vddh}
N 410 -270 410 -250 {
lab=in}
N 410 -270 450 -270 {
lab=in}
N 600 -270 600 -250 {
lab=out}
N 560 -270 600 -270 {
lab=out}
N 90 -260 90 -230 {
lab=vss}
N 160 -350 160 -320 {
lab=vddl}
N 90 -260 160 -260 {
lab=vss}
N 510 -230 510 -210 {
lab=vss}
N 410 -190 410 -160 {
lab=vss}
N 410 -160 600 -160 {
lab=vss}
N 600 -190 600 -160 {
lab=vss}
N 510 -210 510 -160 {
lab=vss}
C {devices/vsource.sym} 90 -290 0 0 {name=vddh value='vddh'
}
C {devices/vsource.sym} 90 -200 0 0 {name=vss value=0
}
C {devices/gnd.sym} 90 -170 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 90 -320 3 1 {name=l6 sig_type=std_logic lab=vddh
}
C {devices/lab_wire.sym} 90 -260 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/code.sym} 910 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vddh = 5.0
.param vddl = 3.3

.temp 27

.control
save all
tran 1n 10u uic

meas tran vsup find v(vddh) at=0.5u

let vth_hi = vsup*0.9
let vth_lo = vsup*0.1

meas tran t_lh_lo WHEN v(out)=vth_lo RISE=1
meas tran t_lh_hi WHEN v(out)=vth_hi RISE=1
meas tran t_hl_hi WHEN v(out)=vth_hi FALL=1
meas tran t_hl_lo WHEN v(out)=vth_lo FALL=1

meas tran vhi find v(out) at=2u
meas tran vlo find v(out) at=7u

let trise = t_lh_hi - t_lh_lo
let tfall = t_hl_lo - t_hl_hi

print trise
print tfall
print vhi 
print vlo

.endc
.end
" }
C {devices/titleblock.sym} 760 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/vsource.sym} 410 -220 0 1 {name=vin value="dc 0 pulse(0 'vddl' 1u 1n 1n 5u 20u)"
}
C {devices/capa.sym} 600 -220 0 0 {name=C1
m=1
value=100f
ic=0
}
C {devices/lab_wire.sym} 410 -160 0 1 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 450 -270 0 0 {name=l4 sig_type=std_logic lab=in
}
C {devices/lab_wire.sym} 570 -270 0 1 {name=l5 sig_type=std_logic lab=out
}
C {devices/vsource.sym} 160 -290 0 0 {name=vddl value='vddl'
}
C {devices/lab_wire.sym} 160 -320 3 1 {name=l11 sig_type=std_logic lab=vddl
}
C {sch/levelshifter/levelshifter/levelshifter.sym} 450 -230 0 0 {name=xlvl
}
C {devices/lab_wire.sym} 490 -310 3 1 {name=l8 sig_type=std_logic lab=vddl
}
C {devices/lab_wire.sym} 530 -310 3 1 {name=l13 sig_type=std_logic lab=vddh
}
C {devices/code.sym} 780 -220 0 0 {name=CORNERS_NG 
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
