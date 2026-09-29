v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1070 -80 1070 -280 1350 -280 1350 -80 1070 -80 {}
P 4 5 0 0 0 -650 1070 -650 1070 0 0 0 {}
P 4 5 1070 -280 1070 -650 1350 -650 1350 -280 1070 -280 {}
N 630 -420 630 -390 { lab=vss}
N 630 -530 630 -500 { lab=vdd}
N 530 -130 530 -100 { lab=vss}
N 390 -360 390 -330 { lab=GND}
N 530 -240 650 -240 { lab=fb}
N 680 -460 780 -460 { lab=out}
N 780 -460 780 -240 { lab=out}
N 710 -240 780 -240 { lab=out}
N 390 -490 390 -420 { lab=in}
N 390 -490 560 -490 { lab=in}
N 530 -430 530 -240 { lab=fb}
N 530 -430 560 -430 { lab=fb}
N 530 -230 530 -190 { lab=fb}
N 530 -240 530 -230 { lab=fb}
N 160 -300 160 -270 { lab=vss}
N 160 -400 160 -360 { lab=vdd}
N 780 -460 820 -460 {
lab=out}
N 850 -360 850 -330 { lab=vss}
N 850 -460 850 -420 {
lab=out}
N 820 -460 850 -460 {
lab=out}
N 610 -410 610 -370 {
lab=bias}
C {devices/lab_wire.sym} 630 -420 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 630 -530 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 390 -390 0 0 {name=vin value="dc 'vcm' ac 1"
}
C {devices/code.sym} 1220 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control 

.param vdd=3.3
.param vcm='vdd/2'
.param ib=1u
.param cl=1p

.control
save all
noise v(out,vss) vin dec 10 0.1 1e6 1
print inoise_total
print onoise_total
setplot noise1
gnuplot p1 inoise_spectrum
gnuplot p2 onoise_spectrum
set wr_singlescale
set wr_vecnames
wrdata data.csv onoise_spectrum inoise_spectrum
.endc
"}
C {devices/capa.sym} 530 -160 0 0 {name=c0 m=1 value=1}
C {devices/lab_wire.sym} 530 -130 3 0 {name=l13 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 390 -330 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 560 -430 0 0 {name=l7 sig_type=std_logic lab=fb}
C {devices/res.sym} 680 -240 1 0 {name=r1 m=1 value=10e9 footprint=res10 device=resistor}
C {devices/lab_wire.sym} 680 -460 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 560 -490 0 0 {name=l12 sig_type=std_logic lab=in}
C {devices/isource.sym} 610 -340 0 0 {name=ib value='ib'
}
C {devices/titleblock.sym} 1070 0 0 0 {name=l15 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/vsource.sym} 160 -330 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 160 -240 0 0 {name=vss value=0
}
C {devices/gnd.sym} 160 -210 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 160 -400 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 160 -300 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/code.sym} 1090 -220 0 0 {name=CORNERS_NG 
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
C {devices/capa.sym} 850 -390 0 0 {name=cl m=1 value='cl' ic=0
}
C {devices/lab_wire.sym} 850 -360 3 0 {name=l10 sig_type=std_logic lab=vss}
C {sch/bandgap_cm/bg_amplifier/bg_amplifier.sym} 710 -460 0 0 {name=xamp
}
C {devices/lab_wire.sym} 610 -310 3 0 {name=l4 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 610 -410 3 0 {name=l17 sig_type=std_logic lab=bias
}
C {devices/code.sym} 1150 -510 0 0 {name=EXT 
only_toplevel=false
format="tcleval( @value )"
value="* extract

* pex
*.include \\\\$::DESIGN_PATH\\\\/sch/bandgap_cm/bg_amplifier/bg_amplifier.pex.spice
"}
