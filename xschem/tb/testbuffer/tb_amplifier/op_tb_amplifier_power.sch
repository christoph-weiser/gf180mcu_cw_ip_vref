v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 0 0 -700 830 -700 830 0 0 0 {}
P 4 5 830 -80 830 -280 1110 -280 1110 -80 830 -80 {}
P 4 5 830 -280 830 -700 1110 -700 1110 -280 830 -280 {}
N 390 -260 390 -230 { lab=vss}
N 390 -370 390 -340 { lab=vdd}
N 230 -210 230 -180 { lab=GND}
N 370 -440 370 -350 { lab=bias}
N 440 -300 590 -300 { lab=out}
N 230 -330 320 -330 { lab=in}
N 230 -330 230 -270 { lab=in}
N 50 -240 50 -210 { lab=vss}
N 50 -340 50 -300 { lab=vdd}
N 510 -300 510 -170 { lab=out}
N 290 -270 290 -170 { lab=out}
N 290 -270 320 -270 { lab=out}
N 290 -170 510 -170 { lab=out}
N 670 -210 670 -180 { lab=vss}
N 670 -300 670 -270 { lab=#net1}
N 670 -300 750 -300 { lab=#net1}
N 750 -300 750 -270 { lab=#net1}
N 750 -210 750 -180 { lab=vss}
N 650 -300 670 -300 {
lab=#net1}
C {devices/lab_wire.sym} 390 -260 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 390 -370 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/code.sym} 980 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd=3.3
.param vcm='vdd/2'
.param ib=5u
.param cl=10p
.param rl=1e6
.param rsw=1

.control
save all
op

let vsup = v(vdd)

let id_xm4 = @m.xamp.xm4.m0[id]
let id_xmb1 = @m.xamp.xmb1.m0[id]
let id_xm5 = @m.xamp.xm5.m0[id]
let id_xm6 = @m.xamp.xm6.m0[id]
let id_xm1 = @m.xamp.xm1.m0[id]
let id_xm2 = @m.xamp.xm2.m0[id]
let id_xm3 = @m.xamp.xm3.m0[id]
let id_xm7 = @m.xamp.xm7.m0[id]
let id_xmb2 = @m.xamp.xmb2.m0[id]
let id_xmb3 = @m.xamp.xmb3.m0[id]
let id_xmb4 = @m.xamp.xmb4.m0[id]

print id_xm1
print id_xm2
print id_xm4
print id_xmb1
print id_xm5
print id_xm6
print id_xm1
print id_xm2
print id_xm3
print id_xm7
print id_xmb2
print id_xmb3
print id_xmb4

let itot = id_xmb1 + id_xmb4 + id_xm3 + id_xm4 + id_xm7
let ptot = itot*vsup

print itot
print ptot

.endc
"}
C {devices/lab_wire.sym} 370 -390 3 0 {name=l16 sig_type=std_logic lab=bias}
C {devices/gnd.sym} 230 -180 0 0 {name=l8 lab=GND}
C {devices/isource.sym} 370 -470 0 0 {name=ib value='ib'
}
C {devices/lab_wire.sym} 440 -300 0 1 {name=l11 sig_type=std_logic lab=out}
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 470 -300 0 0 {name=xamp
}
C {devices/vsource.sym} 230 -240 0 0 {name=Vcm value='vcm'
}
C {devices/titleblock.sym} 830 0 0 0 {name=l15 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/vsource.sym} 50 -270 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 50 -180 0 0 {name=vss value=0
}
C {devices/gnd.sym} 50 -150 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 50 -340 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 50 -240 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 320 -330 0 0 {name=l4 sig_type=std_logic lab=in
}
C {devices/ngspice_probe.sym} 510 -300 0 0 {name=r1}
C {devices/lab_wire.sym} 370 -500 3 1 {name=l7 sig_type=std_logic lab=vdd}
C {devices/code.sym} 850 -220 0 0 {name=CORNERS_NG 
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
C {devices/capa.sym} 670 -240 0 0 {name=cl m=1 value='cl' ic=0
}
C {devices/lab_wire.sym} 670 -210 3 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/res.sym} 750 -240 2 1 {name=rl m=1 value='rl'
}
C {devices/lab_wire.sym} 750 -210 3 0 {name=l17 sig_type=std_logic lab=vss}
C {devices/res.sym} 620 -300 3 1 {name=rsw m=1 value='rsw'
}
