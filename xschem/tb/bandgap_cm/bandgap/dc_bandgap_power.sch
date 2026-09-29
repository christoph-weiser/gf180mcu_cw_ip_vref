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
N 180 -260 180 -220 { lab=vss}
N 390 -280 420 -280 { lab=vdd}
N 390 -190 420 -190 { lab=vss}
N 570 -260 600 -260 {
lab=vbg}
N 180 -350 180 -320 {
lab=vdd}
C {sch/bandgap_cm/bandgap/bandgap.sym} 440 -180 0 0 {name=xbg
schematic=sch/bandgap_cm/bandgap/bandgap.sch
}
C {devices/vsource.sym} 180 -290 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 180 -200 0 0 {name=vss value=0
}
C {devices/gnd.sym} 180 -170 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 570 -260 0 1 {name=l5 sig_type=std_logic lab=vbg}
C {devices/lab_wire.sym} 180 -320 3 1 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 180 -260 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/code.sym} 910 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd = 3.3
.temp 27

.options reltol     = 1e-6

*------------------------------------------------------------
* Nodeset for better convergence
*------------------------------------------------------------
.nodeset v(vbg)  = '1'
.nodeset v(xbg.gate) = 'vdd/2'
.nodeset v(xbg.vx)   = '0.70'
.nodeset v(xbg.vbe2) = '0.65'
.nodeset v(xbg.vs1)  = '0'
*------------------------------------------------------------

*------------------------------------------------------------
* Save device current for DC analysis
*------------------------------------------------------------
.save @m.xbg.xm1.m0[id]
.save @m.xbg.xm2.m0[id]
.save @m.xbg.xamp.xmb1.m0[id]
.save @m.xbg.xamp.xmb2.m0[id]
.save @m.xbg.xamp.xmt1.m0[id]
.save @m.xbg.xamp.xmc7.m0[id]
.save @m.xbg.xamp.xmc8.m0[id]

.control
save all

*optran 0 0 0 100n 0.1m 0

dc vdd  2.5 5 0.1

let vsup = v(vdd)

let itot = abs(vdd#branch)

let id_xm1  = abs(@m.xbg.xm1.m0[id])
let id_xm2  = abs(@m.xbg.xm2.m0[id])
let id_xmb1 = abs(@m.xbg.xamp.xmb1.m0[id])
let id_xmb2 = abs(@m.xbg.xamp.xmb2.m0[id])
let id_xmt1 = abs(@m.xbg.xamp.xmt1.m0[id])
let id_xmc7 = abs(@m.xbg.xamp.xmc7.m0[id])
let id_xmc8 = abs(@m.xbg.xamp.xmc8.m0[id])

let iamp = id_xmb1 + id_xmb2 + id_xmt1 + id_xmc7 + id_xmc8
let ibgc = id_xm1 + id_xm2
let isum = iamp + ibgc

let pamp = vsup*iamp
let pbgc = vsup*ibgc
let psum = vsup*isum
let ptot = vsup*itot

gnuplot p1 itot isum iamp ibgc
gnuplot p2 ptot psum pamp pbgc

meas dc i_min min itot from=2.5 to=5
meas dc i_max max itot from=2.5 to=5
meas dc p_min min ptot from=2.5 to=5
meas dc p_max max ptot from=2.5 to=5

print i_min
print i_max
print p_min
print p_max


.endc
.end
" }
C {devices/lab_wire.sym} 420 -190 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 760 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/noconn.sym} 600 -260 2 0 {name=l2}
C {devices/lab_wire.sym} 420 -280 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 420 -240 0 0 {name=l3 sig_type=std_logic lab=vdd,7*(vss)
}
C {devices/noconn.sym} 570 -230 2 0 {name=l8}
C {devices/lab_wire.sym} 420 -220 0 0 {name=l11 sig_type=std_logic lab=vdd}
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
