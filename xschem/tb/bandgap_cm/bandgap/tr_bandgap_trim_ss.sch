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
N 60 -240 60 -200 { lab=vss}
N 400 -400 430 -400 { lab=vdd}
N 400 -310 430 -310 { lab=vss}
N 580 -380 650 -380 {
lab=vbg}
N 60 -330 60 -300 {
lab=vdd}
N 650 -380 650 -360 {
lab=vbg}
N 320 -340 320 -300 {
lab=en}
N 320 -340 430 -340 {
lab=en}
C {sch/bandgap_cm/bandgap/bandgap.sym} 450 -300 0 0 {name=xbg
schematic=sch/bandgap_cm/bandgap/bandgap.sch}
C {devices/vsource.sym} 60 -180 0 0 {name=vss value=0
}
C {devices/gnd.sym} 60 -150 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 580 -380 0 1 {name=l5 sig_type=std_logic lab=vbg}
C {devices/lab_wire.sym} 60 -300 3 1 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 60 -240 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/code.sym} 910 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.options reltol = 1e-6

.param vdd  = 3.3
.param cl   = 100e-15
.param t_en = 20u

.param tr0 = 0
.param tr1 = 0
.param tr2 = 0
.param tr3 = 0
.param tr4 = 0
.param tr5 = 0
.param tr6 = 0
.param tr7 = 0

.temp 27


.control
save all
tran 1u 200u

meas tran vbg_avg avg v(vbg) from=150e-6 to=199e-6

print vbg_avg

.endc
.end
" }
C {devices/lab_wire.sym} 430 -400 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 430 -310 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 760 0 0 0 {name=l10 author="Christoph Weiser" license="GPLv3" year="2026"}
C {devices/capa.sym} 650 -330 0 0 {name=C1
m=1
value='cl'
}
C {devices/vsource.sym} 60 -270 0 0 {name=vdd value="pulse(0 'vdd' 10u 10n 10n 1m 1)"
}
C {devices/lab_wire.sym} 430 -360 0 0 {name=l3 sig_type=std_logic lab=vtr7,vtr6,vtr5,vtr4,vtr3,vtr2,vtr1,vtr0
}
C {devices/noconn.sym} 580 -350 2 0 {name=l17}
C {devices/vsource.sym} 320 -270 0 0 {name=vdd1 value="pulse(0 'vdd' 't_en' 1n 1n 1m 1)"
}
C {devices/gnd.sym} 320 -240 0 0 {name=l19 lab=GND}
C {devices/lab_wire.sym} 430 -340 0 0 {name=l18 sig_type=std_logic lab=en
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
C {devices/gnd.sym} 650 -300 0 0 {name=l2 lab=GND}
C {devices/code.sym} 840 -450 0 0 {name=EXT 
only_toplevel=false
format="tcleval( @value )"
value="* extract

* tb_amplifier pex
*.include \\\\$::DESIGN_PATH\\\\/sch/bandgap_cm/bg_amplifier/bg_amplifier.pex.spice

* bandgap pex
*.include \\\\$::DESIGN_PATH\\\\/sch/bandgap_cm/bandgap/bandgap.pex.spice
"}
C {devices/vsource.sym} 190 -100 0 0 {name=vtr0 value='tr0'
}
C {devices/lab_wire.sym} 190 -70 3 0 {name=l8 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 190 -130 3 1 {name=l11 sig_type=std_logic lab=vtr0
}
C {devices/vsource.sym} 260 -100 0 0 {name=vtr1 value='tr1'
}
C {devices/lab_wire.sym} 260 -70 3 0 {name=l12 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 260 -130 3 1 {name=l13 sig_type=std_logic lab=vtr1
}
C {devices/vsource.sym} 330 -100 0 0 {name=vtr2 value='tr2'
}
C {devices/lab_wire.sym} 330 -70 3 0 {name=l14 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 330 -130 3 1 {name=l15 sig_type=std_logic lab=vtr2
}
C {devices/vsource.sym} 400 -100 0 0 {name=vtr3 value='tr3'
}
C {devices/lab_wire.sym} 400 -70 3 0 {name=l16 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 400 -130 3 1 {name=l20 sig_type=std_logic lab=vtr3
}
C {devices/vsource.sym} 470 -100 0 0 {name=vtr4 value='tr4'
}
C {devices/lab_wire.sym} 470 -70 3 0 {name=l21 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 470 -130 3 1 {name=l22 sig_type=std_logic lab=vtr4
}
C {devices/vsource.sym} 540 -100 0 0 {name=vtr5 value='tr5'
}
C {devices/lab_wire.sym} 540 -70 3 0 {name=l23 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 540 -130 3 1 {name=l24 sig_type=std_logic lab=vtr5
}
C {devices/vsource.sym} 610 -100 0 0 {name=vtr6 value='tr6'
}
C {devices/lab_wire.sym} 610 -70 3 0 {name=l25 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 610 -130 3 1 {name=l26 sig_type=std_logic lab=vtr6
}
C {devices/vsource.sym} 680 -100 0 0 {name=vtr7 value='tr7'
}
C {devices/lab_wire.sym} 680 -70 3 0 {name=l27 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 680 -130 3 1 {name=l28 sig_type=std_logic lab=vtr7
}
