v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 0 0 -590 960 -590 960 0 0 0 {}
P 4 5 960 -80 960 -280 1240 -280 1240 -80 960 -80 {}
P 4 5 960 -280 960 -590 1240 -590 1240 -280 960 -280 {}
N 470 -270 470 -240 { lab=vss}
N 520 -310 560 -310 { lab=out}
N 560 -310 560 -220 { lab=out}
N 280 -340 280 -270 { lab=in}
N 370 -280 370 -220 { lab=out}
N 370 -280 400 -280 { lab=out}
N 70 -210 70 -180 { lab=vss}
N 70 -310 70 -270 { lab=vdd}
N 370 -220 560 -220 {
lab=out}
N 470 -380 470 -350 { lab=vdd}
N 560 -310 600 -310 {
lab=out}
N 280 -210 280 -180 { lab=vss}
N 450 -440 450 -360 {
lab=bias}
N 280 -340 400 -340 {
lab=in}
N 680 -220 680 -190 { lab=vss}
N 680 -310 680 -280 { lab=#net1}
N 680 -310 760 -310 { lab=#net1}
N 760 -310 760 -280 { lab=#net1}
N 760 -220 760 -190 { lab=vss}
N 660 -310 680 -310 {
lab=#net1}
C {devices/lab_wire.sym} 470 -270 1 1 {name=l5 sig_type=std_logic lab=vss}
C {devices/vsource.sym} 280 -240 0 0 {name=vin value='vcm'
}
C {devices/code.sym} 1110 -220 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
value="*Control 

.param vdd=3.3
.param vcm='vdd/2'
.param ib=5u
.param cl=1p
.param rl=1e6
.param rsw=1

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

let vstart = $&ctrlvdd - 0.3
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
C {devices/lab_wire.sym} 520 -310 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 400 -340 0 0 {name=l12 sig_type=std_logic lab=in}
C {devices/lab_wire.sym} 450 -360 3 1 {name=l20 sig_type=std_logic lab=bias}
C {devices/isource.sym} 450 -470 0 0 {name=ib value='ib'
}
C {devices/titleblock.sym} 960 0 0 0 {name=l14 author="Christoph Weiser"}
C {devices/vsource.sym} 70 -240 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 70 -150 0 0 {name=vss value=0
}
C {devices/gnd.sym} 70 -120 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 70 -310 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 70 -210 3 0 {name=l15 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 470 -350 1 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 280 -210 3 0 {name=l8 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 450 -500 3 1 {name=l3 sig_type=std_logic lab=vdd}
C {devices/code.sym} 980 -220 0 0 {name=CORNERS_NG 
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
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 550 -310 0 0 {name=xamp
}
C {devices/capa.sym} 680 -250 0 0 {name=cl m=1 value='cl' ic=0
}
C {devices/lab_wire.sym} 680 -220 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/res.sym} 760 -250 2 1 {name=rl m=1 value='rl'
}
C {devices/lab_wire.sym} 760 -220 3 0 {name=l17 sig_type=std_logic lab=vss}
C {devices/res.sym} 630 -310 3 1 {name=rsw m=1 value='rsw'
}
