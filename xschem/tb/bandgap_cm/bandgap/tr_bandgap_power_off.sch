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
N 310 -220 310 -180 {
lab=en}
N 310 -220 420 -220 {
lab=en}
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
.param cl = 500e-15

.param t_en = 20u
.csparam t_en = t_en

.temp 27
.options reltol = 1e-6
.options abstol = 1e-12
.options gmin = 1e-15
.options method = gear

.control
save all
tran 1u 1m

let ivdd = abs(vdd#branch)
meas tran ivdd_ss find ivdd at=999e-6

print ivdd_ss

set wr_singlescale
set wr_vecnames
wrdata data.csv vbg ivdd

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
C {devices/vsource.sym} 180 -290 0 0 {name=vdd value="pulse(0 'vdd' 10u 10n 10n 1m 1)"
}
C {devices/lab_wire.sym} 420 -240 0 0 {name=l3 sig_type=std_logic lab=vdd,7*(vss)
}
C {devices/lab_wire.sym} 540 -190 0 1 {name=l8 sig_type=std_logic lab=tio[7:0]
}
C {devices/noconn.sym} 570 -230 2 0 {name=l17}
C {devices/vsource.sym} 310 -150 0 0 {name=vdd1 value="pulse(0 'vdd' 't_en' 1n 1n 100u 1)"
}
C {devices/gnd.sym} 310 -120 0 0 {name=l19 lab=GND}
C {devices/lab_wire.sym} 420 -220 0 0 {name=l18 sig_type=std_logic lab=en
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
C {devices/gnd.sym} 640 -180 0 0 {name=l2 lab=GND}
