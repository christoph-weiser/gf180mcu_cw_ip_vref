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
N 570 -260 640 -260 {
lab=vbg}
N 180 -350 180 -320 {
lab=vdd}
N 640 -260 640 -240 {
lab=vbg}
C {sch/bandgap_cm/bandgap/bandgap.sym} 440 -180 0 0 {name=xbg
schematic=sch/bandgap_cm/bandgap/bandgap.sch}
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
.param cl = 100e-15
.param fin = 1e3
.param vpert = 0.1

.options reltol = 1e-6

.csparam vpert=vpert
.csparam fin=fin

.control

let tmeas = 1/fin
let tsim = 2/fin
let tinit = tsim/1000

save all
tran $&tinit $&tsim

meas tran vbg_min min v(vbg) from=tmeas
meas tran vbg_max max v(vbg) from=tmeas

let psrr = 1/((vbg_max-vbg_min)/vpert)
let psrr_db = vdb(psrr)

print psrr
print psrr_db

.endc
.end
" }
C {devices/lab_wire.sym} 420 -280 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 420 -190 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 760 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/capa.sym} 640 -210 0 0 {name=C1
m=1
value='cl'
}
C {devices/vsource.sym} 180 -290 0 0 {name=vdd value="sin('vdd' 'vpert' 'fin')"
}
C {devices/lab_wire.sym} 420 -240 0 0 {name=l3 sig_type=std_logic lab=vdd,7*(vss)
}
C {devices/noconn.sym} 570 -230 2 0 {name=l17}
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
C {devices/gnd.sym} 640 -180 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 420 -220 0 0 {name=l18 sig_type=std_logic lab=vdd}
