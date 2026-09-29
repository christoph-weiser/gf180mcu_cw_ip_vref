v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 790 -80 790 -280 1070 -280 1070 -80 790 -80 {}
P 4 5 790 -280 790 -520 1070 -520 1070 -280 790 -280 {}
P 4 5 790 0 0 0 0 -520 790 -520 790 0 {}
N 150 -250 150 -210 { lab=vss}
N 340 -380 370 -380 { lab=vdd}
N 340 -290 370 -290 { lab=vss}
N 520 -360 570 -360 {
lab=vbg}
N 150 -340 150 -310 {
lab=vdd}
N 520 -330 560 -330 {
lab=#net1}
N 590 -330 590 -300 {
lab=#net1}
N 560 -330 590 -330 {
lab=#net1}
N 490 -290 510 -290 {
lab=vtio[7:0]}
C {sch/bandgap_cm/bandgap/bandgap.sym} 390 -280 0 0 {name=xbg
schematic=sch/bandgap_cm/bandgap/bandgap.sch}
C {devices/vsource.sym} 150 -280 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 150 -190 0 0 {name=vss value=0
}
C {devices/gnd.sym} 150 -160 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 520 -360 0 1 {name=l5 sig_type=std_logic lab=vbg}
C {devices/lab_wire.sym} 150 -310 3 1 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 590 -240 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/code.sym} 940 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd = 3.3

.temp 27

.options reltol  = 1e-6
.options abstol  = 1e-12
.options gmin    = 1e-15

*------------------------------------------------------------
* Nodeset for better convergence
*------------------------------------------------------------
.nodeset v(vbg)  = '1'
.nodeset v(xbg.gate) = 'vdd/2'
.nodeset v(xbg.vx)   = '0.70'
.nodeset v(xbg.vbe2) = '0.65'
.nodeset v(xbg.vs1)  = '0'
*------------------------------------------------------------


.control

let runs=2
let run=0

alter v.xstb.vprobe1 acmag=1
alter i.xstb.iprobe1 acmag=0

dowhile run < runs
set run =\\"$&run\\"

ac dec 100 0.01 10G

alter v.xstb.vprobe1 acmag=0
alter i.xstb.iprobe1 acmag=1

let run = run + 1

end

let ip11 = ac1.i(v.xstb.vprobe1)
let ip12 = ac1.i(v.xstb.vprobe2)
let ip21 = ac2.i(v.xstb.vprobe1)
let ip22 = ac2.i(v.xstb.vprobe2)
let vprb1 = ac1.v(xstb.probe)
let vprb2 = ac2.v(xstb.probe)

let av = 1/(1/(2*(ip11*vprb2-vprb1*ip21)+vprb1+ip21)-1)

let phase=180/PI*cph(av)

gnuplot p1 vdb(av)
gnuplot p2 phase

meas ac gain find vdb(av) at=0.01
meas ac ugbw when vdb(av)=0
meas ac pm_pha find phase when vdb(av)=0

let pm = 180 + pm_pha
print gain
print ugbw
print pm

set wr_singlescale
set wr_vecnames
wrdata data.csv vdb(av) phase

.endc
.end
" }
C {devices/lab_wire.sym} 370 -380 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 370 -290 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 790 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/noconn.sym} 570 -360 2 0 {name=l2}
C {devices/ngspice_probe.sym} 570 -360 0 0 {name=r32}
C {devices/lab_wire.sym} 370 -340 0 0 {name=l3 sig_type=std_logic lab=vdd,7*(vss)
}
C {devices/vsource.sym} 590 -270 0 0 {name=vm value=0
}
C {devices/lab_wire.sym} 150 -220 3 1 {name=l8 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 370 -320 0 0 {name=l11 sig_type=std_logic lab=vdd
}
C {devices/code.sym} 810 -220 0 0 {name=CORNERS_NG 
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
C {devices/lab_wire.sym} 510 -290 0 1 {name=l12 sig_type=std_logic lab=vtio[7:0]
}
C {xschem/ideal/stbprobe/stbprobe.sym} 510 -80 0 1 {name=xstb
}
C {devices/gnd.sym} 440 -80 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 510 -130 0 1 {name=l14 sig_type=std_logic lab=vtio[2]
}
C {devices/lab_wire.sym} 370 -130 0 0 {name=l15 sig_type=std_logic lab=vtio[5]
}
