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
N 150 -300 150 -260 { lab=vss}
N 360 -320 390 -320 { lab=vdd}
N 360 -230 390 -230 { lab=vss}
N 540 -300 610 -300 {
lab=vbg}
N 150 -390 150 -360 {
lab=vdd}
N 610 -300 610 -280 {
lab=vbg}
N 280 -260 280 -220 {
lab=en}
N 280 -260 390 -260 {
lab=en}
C {sch/bandgap_cm/bandgap/bandgap.sym} 410 -220 0 0 {name=xbg
schematic=sch/bandgap_cm/bandgap/bandgap.sch}
C {devices/vsource.sym} 150 -240 0 0 {name=vss value=0
}
C {devices/gnd.sym} 150 -210 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 540 -300 0 1 {name=l5 sig_type=std_logic lab=vbg}
C {devices/lab_wire.sym} 150 -360 3 1 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 150 -300 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/code.sym} 910 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd = 3.3
.param cl = 500e-15

.param t_en = 20u
.csparam t_en = t_en

.temp 27
.options reltol = 1e-6


.param nseed = 2
.csparam ns = nseed

.control

alterparam sw_stat_global   = 1
alterparam sw_stat_mismatch = 1
reset

setseed $&ns

save all
tran 1u 200u

meas tran vbg_ss find v(vbg) at=199e-6

print vbg_ss

*set wr_singlescale
*set wr_vecnames
*wrdata data.csv vbg

.endc
.end
" }
C {devices/lab_wire.sym} 390 -320 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 390 -230 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 760 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/capa.sym} 610 -250 0 0 {name=C1
m=1
value='cl'
}
C {devices/vsource.sym} 150 -330 0 0 {name=vdd value="pulse(0 'vdd' 10u 10n 10n 1m 1)"
}
C {devices/lab_wire.sym} 390 -280 0 0 {name=l3 sig_type=std_logic lab=vdd,7*(vss)
}
C {devices/noconn.sym} 540 -270 2 0 {name=l17}
C {devices/vsource.sym} 280 -190 0 0 {name=vdd1 value="pulse(0 'vdd' 't_en' 1n 1n 1m 1)"
}
C {devices/gnd.sym} 280 -160 0 0 {name=l19 lab=GND}
C {devices/lab_wire.sym} 390 -260 0 0 {name=l18 sig_type=std_logic lab=en
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
C {devices/gnd.sym} 610 -220 0 0 {name=l2 lab=GND}
