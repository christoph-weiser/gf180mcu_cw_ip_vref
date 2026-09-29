v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 0 0 -650 1060 -650 1060 0 0 0 {}
P 4 5 1060 -80 1060 -280 1340 -280 1340 -80 1060 -80 {}
P 4 5 1060 -280 1060 -650 1340 -650 1340 -280 1060 -280 {}
N 580 -380 580 -350 { lab=vss}
N 580 -490 580 -460 { lab=vdd}
N 370 -320 370 -290 { lab=GND}
N 630 -420 690 -420 { lab=out}
N 860 -330 860 -300 { lab=vss}
N 860 -420 860 -390 { lab=out}
N 370 -450 370 -380 { lab=in}
N 370 -450 510 -450 { lab=in}
N 480 -390 510 -390 { lab=fb}
N 170 -310 170 -280 { lab=vss}
N 170 -410 170 -370 { lab=vdd}
N 690 -420 750 -420 {
lab=out}
N 750 -420 860 -420 {
lab=out}
N 560 -370 560 -330 {
lab=bias}
N 760 -420 760 -180 {
lab=out}
N 480 -180 560 -180 { lab=#net1}
N 700 -180 760 -180 {
lab=out}
N 470 -390 470 -310 {
lab=fb}
N 470 -390 480 -390 {
lab=fb}
N 470 -250 470 -180 {
lab=#net1}
N 470 -180 480 -180 {
lab=#net1}
C {devices/lab_wire.sym} 580 -380 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 580 -490 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 370 -350 0 0 {name=vin value="dc 'vin'"
}
C {devices/code.sym} 1210 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd=3.3

* emulate bandgap setup
.param vfb=1.4
.param vin=0.7
.param ib=1u
.param cl=1p

.temp 27

.control

let runs=2
let run=0

alter v.xstb.vprobe1 acmag=1
alter i.xstb.iprobe1 acmag=0

dowhile run < runs
set run =\\"$&run\\"

ac dec 100 0.01 10G

alter v.xstb.vprobe1 acmag=0
alter i.xstb.iprobe1 acmag=1

let run = run + 1

end

let ip11 = ac1.i(v.xstb.vprobe1)
let ip12 = ac1.i(v.xstb.vprobe2)
let ip21 = ac2.i(v.xstb.vprobe1)
let ip22 = ac2.i(v.xstb.vprobe2)
let vprb1 = ac1.v(xstb.probe)
let vprb2 = ac2.v(xstb.probe)

let av = 1/(1/(2*(ip11*vprb2-vprb1*ip21)+vprb1+ip21)-1)

let phase=180/PI*cph(av)

gnuplot p1 vdb(av)
gnuplot p2 phase

meas ac gain find vdb(av) at=0.01
meas ac ugbw when vdb(av)=0
meas ac pm_pha find phase when vdb(av)=0

let pm = 180 + pm_pha
print gain
print ugbw
print pm

set wr_singlescale
set wr_vecnames
wrdata data.csv vdb(av) phase

.endc
"}
C {devices/gnd.sym} 370 -290 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 510 -390 0 0 {name=l7 sig_type=std_logic lab=fb}
C {devices/capa.sym} 860 -360 0 0 {name=cl m=1 value='cl'
}
C {devices/lab_wire.sym} 860 -330 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 630 -420 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 510 -450 0 0 {name=l12 sig_type=std_logic lab=in}
C {devices/titleblock.sym} 1060 0 0 0 {name=l14 author="Christoph Weiser"}
C {devices/vsource.sym} 170 -340 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 170 -250 0 0 {name=vss value=0
}
C {devices/gnd.sym} 170 -220 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 170 -410 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 170 -310 3 0 {name=l15 sig_type=std_logic lab=vss}
C {sch/bandgap_cm/bg_amplifier/bg_amplifier.sym} 660 -420 0 0 {name=xamp
}
C {devices/isource.sym} 560 -300 0 0 {name=ib value='ib'
}
C {devices/lab_wire.sym} 560 -370 3 0 {name=l17 sig_type=std_logic lab=bias
}
C {devices/code.sym} 1080 -220 0 0 {name=CORNERS_NG 
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
C {xschem/ideal/stbprobe/stbprobe.sym} 700 -130 0 1 {name=xstb
}
C {devices/gnd.sym} 630 -130 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 560 -270 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/code.sym} 1140 -510 0 0 {name=EXT 
only_toplevel=false
format="tcleval( @value )"
value="* extract

* pex
*.include \\\\$::DESIGN_PATH\\\\/sch/bandgap_cm/bg_amplifier/bg_amplifier.pex.spice
"}
C {devices/vsource.sym} 470 -280 2 0 {name=vfb value='vfb'
}
