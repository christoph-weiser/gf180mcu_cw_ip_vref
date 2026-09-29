v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1060 -80 1060 -280 1340 -280 1340 -80 1060 -80 {}
P 4 5 0 0 0 -650 1060 -650 1060 0 0 0 {}
P 4 5 1060 -80 1060 -280 1340 -280 1340 -80 1060 -80 {}
P 4 5 1060 -280 1060 -650 1340 -650 1340 -280 1060 -280 {}
N 530 -350 530 -320 { lab=vss}
N 530 -460 530 -430 { lab=vdd}
N 370 -300 370 -270 { lab=GND}
N 580 -390 650 -390 { lab=out}
N 650 -390 650 -260 { lab=out}
N 730 -300 730 -270 { lab=vss}
N 730 -390 730 -360 { lab=out}
N 650 -390 730 -390 { lab=out}
N 430 -360 430 -260 { lab=#net1}
N 430 -360 460 -360 { lab=#net1}
N 370 -420 460 -420 { lab=in}
N 370 -420 370 -360 { lab=in}
N 200 -290 200 -260 { lab=vss}
N 200 -390 200 -350 { lab=vdd}
N 510 -340 510 -220 {
lab=bias}
N 600 -260 650 -260 {
lab=out}
N 430 -260 540 -260 {
lab=#net1}
C {devices/lab_wire.sym} 530 -350 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 530 -430 3 1 {name=l6 sig_type=std_logic lab=vdd}
C {devices/code.sym} 1210 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd=3.0

* emulate bandgap setup
.param vfb=1.4
.param vin=0.7
.param ib=1u
.param cl=1p


.control
save all
op

let gds_xmb1 = @m.xamp.xmb1.m0[gds]
let gds_xmb2 = @m.xamp.xmb2.m0[gds]
let gds_xmb3 = @m.xamp.xmb3.m0[gds]
let gds_xmb4 = @m.xamp.xmb4.m0[gds]
let gds_xmb5 = @m.xamp.xmb5.m0[gds]
let gds_xmc1 = @m.xamp.xmc1.m0[gds]
let gds_xmc2 = @m.xamp.xmc2.m0[gds]
let gds_xmc3 = @m.xamp.xmc3.m0[gds]
let gds_xmc4 = @m.xamp.xmc4.m0[gds]
let gds_xmc5 = @m.xamp.xmc5.m0[gds]
let gds_xmc6 = @m.xamp.xmc6.m0[gds]
let gds_xmc7 = @m.xamp.xmc7.m0[gds]
let gds_xmc8 = @m.xamp.xmc8.m0[gds]
let gds_xmd1 = @m.xamp.xmd1.m0[gds]
let gds_xmd2 = @m.xamp.xmd2.m0[gds]
let gds_xmt1 = @m.xamp.xmt1.m0[gds]
let gm_xmb1 = @m.xamp.xmb1.m0[gm]
let gm_xmb2 = @m.xamp.xmb2.m0[gm]
let gm_xmb3 = @m.xamp.xmb3.m0[gm]
let gm_xmb4 = @m.xamp.xmb4.m0[gm]
let gm_xmb5 = @m.xamp.xmb5.m0[gm]
let gm_xmc1 = @m.xamp.xmc1.m0[gm]
let gm_xmc2 = @m.xamp.xmc2.m0[gm]
let gm_xmc3 = @m.xamp.xmc3.m0[gm]
let gm_xmc4 = @m.xamp.xmc4.m0[gm]
let gm_xmc5 = @m.xamp.xmc5.m0[gm]
let gm_xmc6 = @m.xamp.xmc6.m0[gm]
let gm_xmc7 = @m.xamp.xmc7.m0[gm]
let gm_xmc8 = @m.xamp.xmc8.m0[gm]
let gm_xmd1 = @m.xamp.xmd1.m0[gm]
let gm_xmd2 = @m.xamp.xmd2.m0[gm]
let gm_xmt1 = @m.xamp.xmt1.m0[gm]
let id_xmb1 = @m.xamp.xmb1.m0[id]
let id_xmb2 = @m.xamp.xmb2.m0[id]
let id_xmb3 = @m.xamp.xmb3.m0[id]
let id_xmb4 = @m.xamp.xmb4.m0[id]
let id_xmb5 = @m.xamp.xmb5.m0[id]
let id_xmc1 = @m.xamp.xmc1.m0[id]
let id_xmc2 = @m.xamp.xmc2.m0[id]
let id_xmc3 = @m.xamp.xmc3.m0[id]
let id_xmc4 = @m.xamp.xmc4.m0[id]
let id_xmc5 = @m.xamp.xmc5.m0[id]
let id_xmc6 = @m.xamp.xmc6.m0[id]
let id_xmc7 = @m.xamp.xmc7.m0[id]
let id_xmc8 = @m.xamp.xmc8.m0[id]
let id_xmd1 = @m.xamp.xmd1.m0[id]
let id_xmd2 = @m.xamp.xmd2.m0[id]
let id_xmt1 = @m.xamp.xmt1.m0[id]
let vds_xmb1 = @m.xamp.xmb1.m0[vds]
let vds_xmb2 = @m.xamp.xmb2.m0[vds]
let vds_xmb3 = @m.xamp.xmb3.m0[vds]
let vds_xmb4 = @m.xamp.xmb4.m0[vds]
let vds_xmb5 = @m.xamp.xmb5.m0[vds]
let vds_xmc1 = @m.xamp.xmc1.m0[vds]
let vds_xmc2 = @m.xamp.xmc2.m0[vds]
let vds_xmc3 = @m.xamp.xmc3.m0[vds]
let vds_xmc4 = @m.xamp.xmc4.m0[vds]
let vds_xmc5 = @m.xamp.xmc5.m0[vds]
let vds_xmc6 = @m.xamp.xmc6.m0[vds]
let vds_xmc7 = @m.xamp.xmc7.m0[vds]
let vds_xmc8 = @m.xamp.xmc8.m0[vds]
let vds_xmd1 = @m.xamp.xmd1.m0[vds]
let vds_xmd2 = @m.xamp.xmd2.m0[vds]
let vds_xmt1 = @m.xamp.xmt1.m0[vds]
let vdsat_xmb1 = @m.xamp.xmb1.m0[vdsat]
let vdsat_xmb2 = @m.xamp.xmb2.m0[vdsat]
let vdsat_xmb3 = @m.xamp.xmb3.m0[vdsat]
let vdsat_xmb4 = @m.xamp.xmb4.m0[vdsat]
let vdsat_xmb5 = @m.xamp.xmb5.m0[vdsat]
let vdsat_xmc1 = @m.xamp.xmc1.m0[vdsat]
let vdsat_xmc2 = @m.xamp.xmc2.m0[vdsat]
let vdsat_xmc3 = @m.xamp.xmc3.m0[vdsat]
let vdsat_xmc4 = @m.xamp.xmc4.m0[vdsat]
let vdsat_xmc5 = @m.xamp.xmc5.m0[vdsat]
let vdsat_xmc6 = @m.xamp.xmc6.m0[vdsat]
let vdsat_xmc7 = @m.xamp.xmc7.m0[vdsat]
let vdsat_xmc8 = @m.xamp.xmc8.m0[vdsat]
let vdsat_xmd1 = @m.xamp.xmd1.m0[vdsat]
let vdsat_xmd2 = @m.xamp.xmd2.m0[vdsat]
let vdsat_xmt1 = @m.xamp.xmt1.m0[vdsat]
let vgs_xmb1 = @m.xamp.xmb1.m0[vgs]
let vgs_xmb2 = @m.xamp.xmb2.m0[vgs]
let vgs_xmb3 = @m.xamp.xmb3.m0[vgs]
let vgs_xmb4 = @m.xamp.xmb4.m0[vgs]
let vgs_xmb5 = @m.xamp.xmb5.m0[vgs]
let vgs_xmc1 = @m.xamp.xmc1.m0[vgs]
let vgs_xmc2 = @m.xamp.xmc2.m0[vgs]
let vgs_xmc3 = @m.xamp.xmc3.m0[vgs]
let vgs_xmc4 = @m.xamp.xmc4.m0[vgs]
let vgs_xmc5 = @m.xamp.xmc5.m0[vgs]
let vgs_xmc6 = @m.xamp.xmc6.m0[vgs]
let vgs_xmc7 = @m.xamp.xmc7.m0[vgs]
let vgs_xmc8 = @m.xamp.xmc8.m0[vgs]
let vgs_xmd1 = @m.xamp.xmd1.m0[vgs]
let vgs_xmd2 = @m.xamp.xmd2.m0[vgs]
let vgs_xmt1 = @m.xamp.xmt1.m0[vgs]
let vth_xmb1 = @m.xamp.xmb1.m0[vth]
let vth_xmb2 = @m.xamp.xmb2.m0[vth]
let vth_xmb3 = @m.xamp.xmb3.m0[vth]
let vth_xmb4 = @m.xamp.xmb4.m0[vth]
let vth_xmb5 = @m.xamp.xmb5.m0[vth]
let vth_xmc1 = @m.xamp.xmc1.m0[vth]
let vth_xmc2 = @m.xamp.xmc2.m0[vth]
let vth_xmc3 = @m.xamp.xmc3.m0[vth]
let vth_xmc4 = @m.xamp.xmc4.m0[vth]
let vth_xmc5 = @m.xamp.xmc5.m0[vth]
let vth_xmc6 = @m.xamp.xmc6.m0[vth]
let vth_xmc7 = @m.xamp.xmc7.m0[vth]
let vth_xmc8 = @m.xamp.xmc8.m0[vth]
let vth_xmd1 = @m.xamp.xmd1.m0[vth]
let vth_xmd2 = @m.xamp.xmd2.m0[vth]
let vth_xmt1 = @m.xamp.xmt1.m0[vth]

let vov_xmb1 = vgs_xmb1-vth_xmb1 
let vov_xmb2 = vgs_xmb2-vth_xmb2 
let vov_xmb3 = vgs_xmb3-vth_xmb3 
let vov_xmb4 = vgs_xmb4-vth_xmb4 
let vov_xmb5 = vgs_xmb5-vth_xmb5 
let vov_xmc1 = vgs_xmc1-vth_xmc1 
let vov_xmc2 = vgs_xmc2-vth_xmc2 
let vov_xmc3 = vgs_xmc3-vth_xmc3 
let vov_xmc4 = vgs_xmc4-vth_xmc4 
let vov_xmc5 = vgs_xmc5-vth_xmc5 
let vov_xmc6 = vgs_xmc6-vth_xmc6 
let vov_xmc7 = vgs_xmc7-vth_xmc7 
let vov_xmc8 = vgs_xmc8-vth_xmc8 
let vov_xmd1 = vgs_xmd1-vth_xmd1 
let vov_xmd2 = vgs_xmd2-vth_xmd2 
let vov_xmt1 = vgs_xmt1-vth_xmt1 

let vsat_xmb1 = vds_xmb1-vdsat_xmb1 
let vsat_xmb2 = vds_xmb2-vdsat_xmb2 
let vsat_xmb3 = vds_xmb3-vdsat_xmb3 
let vsat_xmb4 = vds_xmb4-vdsat_xmb4 
let vsat_xmb5 = vds_xmb5-vdsat_xmb5 
let vsat_xmc1 = vds_xmc1-vdsat_xmc1 
let vsat_xmc2 = vds_xmc2-vdsat_xmc2 
let vsat_xmc3 = vds_xmc3-vdsat_xmc3 
let vsat_xmc4 = vds_xmc4-vdsat_xmc4 
let vsat_xmc5 = vds_xmc5-vdsat_xmc5 
let vsat_xmc6 = vds_xmc6-vdsat_xmc6 
let vsat_xmc7 = vds_xmc7-vdsat_xmc7 
let vsat_xmc8 = vds_xmc8-vdsat_xmc8 
let vsat_xmd1 = vds_xmd1-vdsat_xmd1 
let vsat_xmd2 = vds_xmd2-vdsat_xmd2 
let vsat_xmt1 = vds_xmt1-vdsat_xmt1 



print gds_xmb1
print gds_xmb2
print gds_xmb3
print gds_xmb4
print gds_xmb5
print gds_xmc1
print gds_xmc2
print gds_xmc3
print gds_xmc4
print gds_xmc5
print gds_xmc6
print gds_xmc7
print gds_xmc8
print gds_xmd1
print gds_xmd2
print gds_xmt1
print gm_xmb1
print gm_xmb2
print gm_xmb3
print gm_xmb4
print gm_xmb5
print gm_xmc1
print gm_xmc2
print gm_xmc3
print gm_xmc4
print gm_xmc5
print gm_xmc6
print gm_xmc7
print gm_xmc8
print gm_xmd1
print gm_xmd2
print gm_xmt1
print id_xmb1
print id_xmb2
print id_xmb3
print id_xmb4
print id_xmb5
print id_xmc1
print id_xmc2
print id_xmc3
print id_xmc4
print id_xmc5
print id_xmc6
print id_xmc7
print id_xmc8
print id_xmd1
print id_xmd2
print id_xmt1
print vds_xmb1
print vds_xmb2
print vds_xmb3
print vds_xmb4
print vds_xmb5
print vds_xmc1
print vds_xmc2
print vds_xmc3
print vds_xmc4
print vds_xmc5
print vds_xmc6
print vds_xmc7
print vds_xmc8
print vds_xmd1
print vds_xmd2
print vds_xmt1
print vdsat_xmb1
print vdsat_xmb2
print vdsat_xmb3
print vdsat_xmb4
print vdsat_xmb5
print vdsat_xmc1
print vdsat_xmc2
print vdsat_xmc3
print vdsat_xmc4
print vdsat_xmc5
print vdsat_xmc6
print vdsat_xmc7
print vdsat_xmc8
print vdsat_xmd1
print vdsat_xmd2
print vdsat_xmt1
print vgs_xmb1
print vgs_xmb2
print vgs_xmb3
print vgs_xmb4
print vgs_xmb5
print vgs_xmc1
print vgs_xmc2
print vgs_xmc3
print vgs_xmc4
print vgs_xmc5
print vgs_xmc6
print vgs_xmc7
print vgs_xmc8
print vgs_xmd1
print vgs_xmd2
print vgs_xmt1
print vth_xmb1
print vth_xmb2
print vth_xmb3
print vth_xmb4
print vth_xmb5
print vth_xmc1
print vth_xmc2
print vth_xmc3
print vth_xmc4
print vth_xmc5
print vth_xmc6
print vth_xmc7
print vth_xmc8
print vth_xmd1
print vth_xmd2
print vth_xmt1
print vov_xmb1
print vov_xmb2
print vov_xmb3
print vov_xmb4
print vov_xmb5
print vov_xmc1
print vov_xmc2
print vov_xmc3
print vov_xmc4
print vov_xmc5
print vov_xmc6
print vov_xmc7
print vov_xmc8
print vov_xmd1
print vov_xmd2
print vov_xmt1
print vsat_xmb1
print vsat_xmb2
print vsat_xmb3
print vsat_xmb4
print vsat_xmb5
print vsat_xmc1
print vsat_xmc2
print vsat_xmc3
print vsat_xmc4
print vsat_xmc5
print vsat_xmc6
print vsat_xmc7
print vsat_xmc8
print vsat_xmd1
print vsat_xmd2
print vsat_xmt1


* nodes
let mirr = xamp.mirr
let vbp1 = xamp.vbn1
let vbp2 = xamp.vbn2
let vbn1 = xamp.vbp1
let vcm  = xamp.vcm
let vop  = xamp.vop
let von  = xamp.von
let vda  = xamp.vda
let vdb  = xamp.vdb

print in
print out
print bias
print mirr
print vbp1
print vbp2
print vbn1
print vcm
print vop
print von
print vda
print vdb

write op_bg_amplifier.raw

.endc
"}
C {devices/gnd.sym} 370 -270 0 0 {name=l8 lab=GND}
C {devices/capa.sym} 730 -330 0 0 {name=cl m=1 value='cl'
}
C {devices/lab_wire.sym} 730 -300 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 580 -390 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/vsource.sym} 370 -330 0 0 {name=vin value='vin'
}
C {devices/titleblock.sym} 1060 0 0 0 {name=l15 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/vsource.sym} 200 -320 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 200 -230 0 0 {name=vss value=0
}
C {devices/gnd.sym} 200 -200 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 200 -390 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 200 -290 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 460 -420 0 0 {name=l4 sig_type=std_logic lab=in
}
C {devices/ngspice_probe.sym} 650 -390 0 0 {name=r1}
C {sch/bandgap_cm/bg_amplifier/bg_amplifier.sym} 610 -390 0 0 {name=xamp
schematic=sch/bandgap_cm/bg_amplifier/bg_amplifier.sch
}
C {devices/lab_wire.sym} 510 -340 3 0 {name=l14 sig_type=std_logic lab=bias
}
C {devices/vsource.sym} 570 -260 1 0 {name=vfb value='vfb'
}
C {devices/code.sym} 1080 -220 0 0 {name=CORNERS_NG 
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
C {devices/isource.sym} 510 -190 0 0 {name=ib1 value='ib'
}
C {devices/lab_wire.sym} 510 -160 3 0 {name=l16 sig_type=std_logic lab=vss}
C {devices/code.sym} 1140 -510 0 0 {name=EXT 
only_toplevel=false
format="tcleval( @value )"
value="* extract

* pex
*.include \\\\$::DESIGN_PATH\\\\/sch/bandgap_cm/bg_amplifier/bg_amplifier.pex.spice
"}
