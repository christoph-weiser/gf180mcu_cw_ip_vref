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
N 610 -230 610 -200 {
lab=#net1}
N 570 -230 610 -230 {
lab=#net1}
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

.options reltol   = 1e-6
.options seed     = 3


.control
save all

dc temp -40 125 5
gnuplot p1 vbg

meas dc vbg_min min vbg from=0 to=75
meas dc vbg_max max vbg from=0 to=75

let vbg_min_eval = vbg_min + 1u
let vbg_max_eval = vbg_max - 1u

meas dc t_max when v(vbg)=vbg_max_eval
meas dc t_min when v(vbg)=vbg_min_eval

let dv_dT = (vbg_max-vbg_min)/abs((t_max-t_min))

let iout = abs(vm#branch)

gnuplot p2 iout

print vbg_min
print vbg_max
print t_min
print t_max
print dv_dT

.endc
.end
" }
C {devices/lab_wire.sym} 420 -280 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 420 -190 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 760 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/noconn.sym} 600 -260 2 0 {name=l2}
C {devices/lab_wire.sym} 420 -240 0 0 {name=l3 sig_type=std_logic lab=vss,7*(vdd)
}
C {devices/lab_wire.sym} 610 -140 3 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/vsource.sym} 610 -170 0 0 {name=vm value=0
}
C {devices/lab_wire.sym} 420 -220 0 0 {name=l8 sig_type=std_logic lab=vdd}
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
