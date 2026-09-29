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
N 180 -350 180 -320 {
lab=vdd}
N 630 -260 660 -260 {
lab=vbg}
C {sch/bandgap_cm/bandgap/bandgap.sym} 440 -180 0 0 {name=xbg}
C {devices/vsource.sym} 180 -290 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 180 -200 0 0 {name=vss value=0
}
C {devices/gnd.sym} 180 -170 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 630 -260 0 1 {name=l5 sig_type=std_logic lab=vbg}
C {devices/lab_wire.sym} 180 -320 3 1 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 180 -260 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/code.sym} 910 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd = 5

.temp 27
.options reltol    = 1e-6

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

save all

noise v(vbg,vss) vns dec 10 0.1 10 1

print onoise_total
setplot noise1
gnuplot p1 onoise_spectrum
setplot noise1
set wr_vecnames
wrdata noise.csv all

.endc
.end
" }
C {devices/lab_wire.sym} 420 -280 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 420 -190 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 760 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/noconn.sym} 660 -260 2 0 {name=l2}
C {devices/vsource.sym} 600 -260 1 0 {name=vns value="DC 0 AC 0"
}
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
