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
N 90 -270 90 -230 { lab=vss}
N 390 -310 420 -310 { lab=vdd}
N 390 -220 420 -220 { lab=vss}
N 570 -290 640 -290 {
lab=vbg}
N 90 -360 90 -330 {
lab=vdd}
N 640 -290 640 -270 {
lab=vbg}
N 310 -250 310 -210 {
lab=en}
N 310 -250 420 -250 {
lab=en}
C {sch/bandgap_cm/bandgap/bandgap.sym} 440 -210 0 0 {name=xbg
schematic=sch/bandgap_cm/bandgap/bandgap.sch}
C {devices/vsource.sym} 90 -210 0 0 {name=vss value=0
}
C {devices/gnd.sym} 90 -180 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 570 -290 0 1 {name=l5 sig_type=std_logic lab=vbg}
C {devices/lab_wire.sym} 90 -330 3 1 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 90 -270 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/code.sym} 910 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.options reltol = 1e-6

.param vdd  = 3.3
.param cl   = 100e-15
.param t_en = 20u

.temp 27


.control
save all
tran 1u 200u

meas tran vbg_avg avg v(vbg) from=150e-6 to=199e-6

print vbg_avg

*set wr_singlescale
*set wr_vecnames
*wrdata data.csv vbg

.endc
.end
" }
C {devices/lab_wire.sym} 420 -310 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 420 -220 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 760 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/capa.sym} 640 -240 0 0 {name=C1
m=1
value='cl'
}
C {devices/vsource.sym} 90 -300 0 0 {name=vdd value="pulse(0 'vdd' 10u 10n 10n 1m 1)"
}
C {devices/lab_wire.sym} 420 -270 0 0 {name=l3 sig_type=std_logic lab=vdd,7*(vss)
}
C {devices/noconn.sym} 570 -260 2 0 {name=l17}
C {devices/vsource.sym} 310 -180 0 0 {name=vdd1 value="pulse(0 'vdd' 't_en' 1n 1n 1m 1)"
}
C {devices/gnd.sym} 310 -150 0 0 {name=l19 lab=GND}
C {devices/lab_wire.sym} 420 -250 0 0 {name=l18 sig_type=std_logic lab=en
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
C {devices/gnd.sym} 640 -210 0 0 {name=l2 lab=GND}
