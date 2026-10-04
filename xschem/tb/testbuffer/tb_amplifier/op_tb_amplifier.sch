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

let l_xm4 = @m.xamp.xm4.m0[l]
let l_xm5 = @m.xamp.xm5.m0[l]
let l_xm6 = @m.xamp.xm6.m0[l]
let l_xm7 = @m.xamp.xm7.m0[l]
let m_xm4 = @m.xamp.xm4.m0[m]
let m_xm5 = @m.xamp.xm5.m0[m]
let m_xm6 = @m.xamp.xm6.m0[m]
let m_xm7 = @m.xamp.xm7.m0[m]
let w_xm4 = @m.xamp.xm4.m0[w]
let w_xm5 = @m.xamp.xm5.m0[w]
let w_xm6 = @m.xamp.xm6.m0[w]
let w_xm7 = @m.xamp.xm7.m0[w]

let s4 = m_xm4*w_xm4/l_xm4
let s5 = m_xm5*w_xm5/l_xm5
let s6 = m_xm6*w_xm6/l_xm6
let s7 = m_xm7*w_xm7/l_xm7

let gm_xm4 = @m.xamp.xm4.m0[gm]
let gm_xmb1 = @m.xamp.xmb1.m0[gm]
let gm_xm5 = @m.xamp.xm5.m0[gm]
let gm_xm6 = @m.xamp.xm6.m0[gm]
let gm_xm1 = @m.xamp.xm1.m0[gm]
let gm_xm2 = @m.xamp.xm2.m0[gm]
let gm_xm3 = @m.xamp.xm3.m0[gm]
let gm_xm7 = @m.xamp.xm7.m0[gm]
let gm_xmb2 = @m.xamp.xmb2.m0[gm]
let gm_xmb3 = @m.xamp.xmb3.m0[gm]
let gm_xmb4 = @m.xamp.xmb4.m0[gm]
let gds_xm4 = @m.xamp.xm4.m0[gds]
let gds_xmb1 = @m.xamp.xmb1.m0[gds]
let gds_xm5 = @m.xamp.xm5.m0[gds]
let gds_xm6 = @m.xamp.xm6.m0[gds]
let gds_xm1 = @m.xamp.xm1.m0[gds]
let gds_xm2 = @m.xamp.xm2.m0[gds]
let gds_xm3 = @m.xamp.xm3.m0[gds]
let gds_xm7 = @m.xamp.xm7.m0[gds]
let gds_xmb2 = @m.xamp.xmb2.m0[gds]
let gds_xmb3 = @m.xamp.xmb3.m0[gds]
let gds_xmb4 = @m.xamp.xmb4.m0[gds]
let vdsat_xm4 = @m.xamp.xm4.m0[vdsat]
let vdsat_xmb1 = @m.xamp.xmb1.m0[vdsat]
let vdsat_xm5 = @m.xamp.xm5.m0[vdsat]
let vdsat_xm6 = @m.xamp.xm6.m0[vdsat]
let vdsat_xm1 = @m.xamp.xm1.m0[vdsat]
let vdsat_xm2 = @m.xamp.xm2.m0[vdsat]
let vdsat_xm3 = @m.xamp.xm3.m0[vdsat]
let vdsat_xm7 = @m.xamp.xm7.m0[vdsat]
let vdsat_xmb2 = @m.xamp.xmb2.m0[vdsat]
let vdsat_xmb3 = @m.xamp.xmb3.m0[vdsat]
let vdsat_xmb4 = @m.xamp.xmb4.m0[vdsat]
let vth_xm4 = @m.xamp.xm4.m0[vth]
let vth_xmb1 = @m.xamp.xmb1.m0[vth]
let vth_xm5 = @m.xamp.xm5.m0[vth]
let vth_xm6 = @m.xamp.xm6.m0[vth]
let vth_xm1 = @m.xamp.xm1.m0[vth]
let vth_xm2 = @m.xamp.xm2.m0[vth]
let vth_xm3 = @m.xamp.xm3.m0[vth]
let vth_xm7 = @m.xamp.xm7.m0[vth]
let vth_xmb2 = @m.xamp.xmb2.m0[vth]
let vth_xmb3 = @m.xamp.xmb3.m0[vth]
let vth_xmb4 = @m.xamp.xmb4.m0[vth]
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
let vgs_xm4 = @m.xamp.xm4.m0[vgs]
let vgs_xmb1 = @m.xamp.xmb1.m0[vgs]
let vgs_xm5 = @m.xamp.xm5.m0[vgs]
let vgs_xm6 = @m.xamp.xm6.m0[vgs]
let vgs_xm1 = @m.xamp.xm1.m0[vgs]
let vgs_xm2 = @m.xamp.xm2.m0[vgs]
let vgs_xm3 = @m.xamp.xm3.m0[vgs]
let vgs_xm7 = @m.xamp.xm7.m0[vgs]
let vgs_xmb2 = @m.xamp.xmb2.m0[vgs]
let vgs_xmb3 = @m.xamp.xmb3.m0[vgs]
let vgs_xmb4 = @m.xamp.xmb4.m0[vgs]
let vds_xm4 = @m.xamp.xm4.m0[vds]
let vds_xmb1 = @m.xamp.xmb1.m0[vds]
let vds_xm5 = @m.xamp.xm5.m0[vds]
let vds_xm6 = @m.xamp.xm6.m0[vds]
let vds_xm1 = @m.xamp.xm1.m0[vds]
let vds_xm2 = @m.xamp.xm2.m0[vds]
let vds_xm3 = @m.xamp.xm3.m0[vds]
let vds_xm7 = @m.xamp.xm7.m0[vds]
let vds_xmb2 = @m.xamp.xmb2.m0[vds]
let vds_xmb3 = @m.xamp.xmb3.m0[vds]
let vds_xmb4 = @m.xamp.xmb4.m0[vds]

let vsat_xm4 = vds_xm4 - vdsat_xm4
let vsat_xmb1 = vds_xmb1 - vdsat_xmb1
let vsat_xm5 = vds_xm5 - vdsat_xm5
let vsat_xm6 = vds_xm6 - vdsat_xm6
let vsat_xm1 = vds_xm1 - vdsat_xm1
let vsat_xm2 = vds_xm2 - vdsat_xm2
let vsat_xm3 = vds_xm3 - vdsat_xm3
let vsat_xm7 = vds_xm7 - vdsat_xm7
let vsat_xmb2 = vds_xmb2 - vdsat_xmb2
let vsat_xmb3 = vds_xmb3 - vdsat_xmb3
let vsat_xmb4 = vds_xmb4 - vdsat_xmb4

let vov_xm4 = vgs_xm4 - vth_xm4
let vov_xmb1 = vgs_xmb1 - vth_xmb1
let vov_xm5 = vgs_xm5 - vth_xm5
let vov_xm6 = vgs_xm6 - vth_xm6
let vov_xm1 = vgs_xm1 - vth_xm1
let vov_xm2 = vgs_xm2 - vth_xm2
let vov_xm3 = vgs_xm3 - vth_xm3
let vov_xm7 = vgs_xm7 - vth_xm7
let vov_xmb2 = vgs_xmb2 - vth_xmb2
let vov_xmb3 = vgs_xmb3 - vth_xmb3
let vov_xmb4 = vgs_xmb4 - vth_xmb4


let voff = in - out
let voff_rhs = (s7/s4)
let voff_lhs = 2*(s6/s5)

let comp = xamp.comp
let vbm  = xamp.vbm
let vbt  = xamp.vbt
let mirr = xamp.mirr
let vcm  = xamp.vcm



print gm_xm4
print gm_xmb1
print gm_xm5
print gm_xm6
print gm_xm1
print gm_xm2
print gm_xm3
print gm_xm7
print gm_xmb2
print gm_xmb3
print gm_xmb4
print gds_xm1
print gds_xm2
print gds_xm4
print gds_xmb1
print gds_xm5
print gds_xm6
print gds_xm1
print gds_xm2
print gds_xm3
print gds_xm7
print gds_xmb2
print gds_xmb3
print gds_xmb4
print vdsat_xm1
print vdsat_xm2
print vdsat_xm4
print vdsat_xmb1
print vdsat_xm5
print vdsat_xm6
print vdsat_xm1
print vdsat_xm2
print vdsat_xm3
print vdsat_xm7
print vdsat_xmb2
print vdsat_xmb3
print vdsat_xmb4
print vth_xm1
print vth_xm2
print vth_xm4
print vth_xmb1
print vth_xm5
print vth_xm6
print vth_xm1
print vth_xm2
print vth_xm3
print vth_xm7
print vth_xmb2
print vth_xmb3
print vth_xmb4
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
print vgs_xm1
print vgs_xm2
print vgs_xm4
print vgs_xmb1
print vgs_xm5
print vgs_xm6
print vgs_xm1
print vgs_xm2
print vgs_xm3
print vgs_xm7
print vgs_xmb2
print vgs_xmb3
print vgs_xmb4
print vds_xm1
print vds_xm2
print vds_xm4
print vds_xmb1
print vds_xm5
print vds_xm6
print vds_xm1
print vds_xm2
print vds_xm3
print vds_xm7
print vds_xmb2
print vds_xmb3
print vds_xmb4
print vsat_xm1
print vsat_xm2
print vsat_xm4
print vsat_xmb1
print vsat_xm5
print vsat_xm6
print vsat_xm1
print vsat_xm2
print vsat_xm3
print vsat_xm7
print vsat_xmb2
print vsat_xmb3
print vsat_xmb4

print vov_xm1
print vov_xm2
print vov_xm4
print vov_xmb1
print vov_xm5
print vov_xm6
print vov_xm1
print vov_xm2
print vov_xm3
print vov_xm7
print vov_xmb2
print vov_xmb3
print vov_xmb4

print comp
print vbm
print vbt
print mirr
print vcm
print bias
print in 
print out

print voff
print voff_rhs
print voff_lhs



write op_tb_amplifier.raw

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
