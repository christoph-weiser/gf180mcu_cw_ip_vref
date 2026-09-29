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
N 660 -390 700 -390 { lab=out}
N 700 -390 700 -160 { lab=out}
N 420 -420 420 -350 { lab=in}
N 510 -360 510 -160 { lab=out}
N 510 -360 540 -360 { lab=out}
N 210 -290 210 -260 { lab=vss}
N 210 -390 210 -350 { lab=vdd}
N 510 -160 700 -160 {
lab=out}
N 700 -390 740 -390 {
lab=out}
N 420 -290 420 -260 { lab=vss}
N 420 -420 540 -420 {
lab=in}
N 820 -300 820 -270 { lab=vss}
N 820 -390 820 -360 { lab=out}
N 800 -390 820 -390 {
lab=out}
N 740 -390 800 -390 {
lab=out}
N 590 -340 590 -300 {
lab=bias}
C {devices/lab_wire.sym} 610 -350 1 1 {name=l5 sig_type=std_logic lab=vss}
C {devices/vsource.sym} 420 -320 0 0 {name=vin value='vcm'
}
C {devices/code.sym} 1220 -220 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
value="*Control 

.param vdd=3.3
.param vcm='vdd/2'
.param ib=1u
.param cl=1p

.csparam ctrlvdd = 'vdd' 

.control
save all

* vout/vin = Avol/(1+Avol*Beta)

let gain_threshold = 60
let avol = 10^(gain_threshold/20)
let threshold = avol/(1+avol)

let vstart = 0.3
let vend   = 1.0
dc vin $&vstart $&vend 0.01
let ratio = v(out)/v(in)
meas dc vin_min when ratio=threshold rise=1
let icmr_min = vin_min
print vin_min
print icmr_min 

let vstart = $&ctrlvdd - 1.0
let vend   = $&ctrlvdd
dc vin $&vstart $&vend 0.01
let ratio = v(out)/v(in)
meas dc vin_max when ratio=threshold fall=1
print vin_max
let icmr_max = $&ctrlvdd - vin_max
print icmr_max 

setplot dc1
gnuplot p1 ratio
setplot dc2
gnuplot p2 ratio

.endc
"}
C {devices/lab_wire.sym} 660 -390 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 540 -420 0 0 {name=l12 sig_type=std_logic lab=in}
C {devices/titleblock.sym} 1070 0 0 0 {name=l14 author="Christoph Weiser"}
C {devices/vsource.sym} 210 -320 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 210 -230 0 0 {name=vss value=0
}
C {devices/gnd.sym} 210 -200 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 210 -390 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 210 -290 3 0 {name=l15 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 610 -430 1 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 420 -290 3 0 {name=l8 sig_type=std_logic lab=vss}
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
C {devices/capa.sym} 820 -330 0 0 {name=cl m=1 value='cl' ic=0
}
C {devices/lab_wire.sym} 820 -300 3 0 {name=l10 sig_type=std_logic lab=vss}
C {sch/bandgap_cm/bg_amplifier/bg_amplifier.sym} 690 -390 0 0 {name=xamp
}
C {devices/isource.sym} 590 -270 0 0 {name=ib value='ib'
}
C {devices/lab_wire.sym} 590 -240 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 590 -340 3 0 {name=l17 sig_type=std_logic lab=bias
}
C {devices/code.sym} 1150 -510 0 0 {name=EXT 
only_toplevel=false
format="tcleval( @value )"
value="* extract

* pex
*.include \\\\$::DESIGN_PATH\\\\/sch/bandgap_cm/bg_amplifier/bg_amplifier.pex.spice
"}
