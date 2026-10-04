v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 0 0 -650 1070 -650 1070 0 0 0 {}
P 4 5 1070 -80 1070 -280 1350 -280 1350 -80 1070 -80 {}
P 4 5 1070 -280 1070 -650 1350 -650 1350 -280 1070 -280 {}
N 520 -310 520 -280 { lab=vss}
N 520 -420 520 -390 { lab=vdd}
N 310 -250 310 -220 { lab=GND}
N 570 -350 630 -350 { lab=#net1}
N 630 -350 630 -240 { lab=#net1}
N 770 -260 770 -230 { lab=vss}
N 770 -350 770 -320 { lab=out}
N 310 -380 310 -310 { lab=in}
N 310 -380 450 -380 { lab=in}
N 420 -320 420 -240 { lab=fb}
N 420 -320 450 -320 { lab=fb}
N 770 -350 860 -350 { lab=out}
N 860 -260 860 -230 { lab=vss}
N 860 -350 860 -320 { lab=out}
N 90 -180 90 -150 { lab=vss}
N 90 -280 90 -240 { lab=vdd}
N 500 -480 500 -400 {
lab=#net2}
N 630 -350 670 -350 {
lab=#net1}
N 730 -350 770 -350 {
lab=out}
N 430 -210 460 -210 {
lab=fb}
N 600 -210 630 -210 {
lab=#net1}
N 630 -240 630 -210 {
lab=#net1}
N 420 -210 430 -210 {
lab=fb}
N 420 -240 420 -210 {
lab=fb}
C {devices/lab_wire.sym} 520 -310 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 520 -420 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 310 -280 0 0 {name=vin value="dc 'vin'"
}
C {devices/code.sym} 1220 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control 

.param vdd=3.3
.param vcm='vdd/2'
.param vin='vcm'
.param ib=5u
.param cl=10p
.param rl=1e6
.param rsw=1

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
C {devices/gnd.sym} 310 -220 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 450 -320 0 0 {name=l7 sig_type=std_logic lab=fb}
C {devices/capa.sym} 770 -290 0 0 {name=cl m=1 value='cl'
}
C {devices/lab_wire.sym} 770 -260 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 770 -350 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/lab_wire.sym} 450 -380 0 0 {name=l12 sig_type=std_logic lab=in}
C {devices/isource.sym} 500 -510 0 0 {name=ib value='ib'
}
C {devices/res.sym} 860 -290 2 1 {name=rl m=1 value='rl'
}
C {devices/lab_wire.sym} 860 -260 3 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 1070 0 0 0 {name=l14 author="Christoph Weiser"}
C {devices/vsource.sym} 90 -210 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 90 -120 0 0 {name=vss value=0
}
C {devices/gnd.sym} 90 -90 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 90 -280 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 90 -180 3 0 {name=l15 sig_type=std_logic lab=vss}
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 600 -350 0 0 {name=xamp
}
C {devices/lab_wire.sym} 500 -540 3 1 {name=l3 sig_type=std_logic lab=vdd}
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
C {devices/res.sym} 700 -350 3 1 {name=rsw m=1 value='rsw'
}
C {xschem/ideal/stbprobe/stbprobe.sym} 600 -160 0 1 {name=xstb
}
C {devices/gnd.sym} 530 -160 0 0 {name=l4 lab=GND}
