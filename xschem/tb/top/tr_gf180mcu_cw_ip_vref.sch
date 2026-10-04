v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1120 -80 1120 -280 1400 -280 1400 -80 1120 -80 {}
P 4 5 1120 -280 1120 -700 1400 -700 1400 -280 1120 -280 {}
P 4 5 1120 0 0 0 0 -700 1120 -700 1120 0 {}
N 100 -300 100 -260 { lab=vss}
N 100 -390 100 -360 {
lab=avdd}
N 190 -390 190 -360 {
lab=dvdd}
N 100 -270 190 -270 {
lab=vss}
N 190 -300 190 -270 {
lab=vss}
N 910 -370 910 -340 {
lab=vout}
N 830 -370 910 -370 {
lab=vout}
N 380 -390 380 -350 {
lab=vext}
N 380 -390 530 -390 {
lab=vext}
N 490 -510 530 -510 {
lab=avdd}
N 490 -490 530 -490 {
lab=dvdd}
N 490 -470 530 -470 {
lab=vss}
N 380 -470 380 -430 {
lab=vb}
N 380 -430 520 -430 {
lab=vb}
N 520 -430 530 -430 {
lab=vb}
N 420 -210 420 -170 {
lab=en}
N 420 -300 420 -210 {
lab=en}
N 420 -300 530 -300 {
lab=en}
C {devices/vsource.sym} 100 -330 0 0 {name=vapwr value='vapwr'
}
C {devices/vsource.sym} 100 -240 0 0 {name=vss value=0
}
C {devices/gnd.sym} 100 -210 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 100 -360 3 1 {name=l6 sig_type=std_logic lab=avdd
}
C {devices/code.sym} 1270 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.temp = 27

.param vapwr = 3.3
.param vdpwr = 3.3
.param vext = 'vapwr/2'

.param t_en = 20u
.csparam t_en = t_en


*.options method  = gear
.options reltol  = 1e-6
*.options abstol  = 1e-12
*.options gmin    = 1e-15

.control

set wr_vecnames
set wr_singlescale

save all
tran 1u 110u uic

let dev = 1

meas tran vout_ss find v(vout) at=100e-6

let lim_pos = vout_ss*(1+dev/100)
let lim_neg = vout_ss*(1-dev/100)

meas tran t_hl when v(vout)=lim_pos fall=last
meas tran t_lh when v(vout)=lim_neg rise=last

let t_set = max(t_hl, t_lh) - t_en

print t_set
print vout_ss

gnuplot p1 en vout lim_pos lim_neg

.endc
.end
" }
C {devices/titleblock.sym} 1120 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/lab_wire.sym} 100 -270 0 1 {name=l8 sig_type=std_logic lab=vss}
C {devices/vsource.sym} 190 -330 0 0 {name=vdpwr value='vdpwr'
}
C {devices/lab_wire.sym} 190 -360 3 1 {name=l15 sig_type=std_logic lab=dvdd
}
C {devices/lab_wire.sym} 490 -510 0 0 {name=l16 sig_type=std_logic lab=avdd
}
C {devices/lab_wire.sym} 490 -490 0 0 {name=l17 sig_type=std_logic lab=dvdd
}
C {devices/lab_wire.sym} 490 -470 0 0 {name=l18 sig_type=std_logic lab=vss}
C {devices/capa.sym} 910 -310 0 0 {name=C1
m=1
value=50p
ic=0
}
C {devices/lab_wire.sym} 910 -280 3 0 {name=l19 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 910 -370 0 0 {name=l7 sig_type=std_logic lab=vout
}
C {devices/lab_wire.sym} 530 -280 0 0 {name=l20 sig_type=std_logic lab=dvdd,7*(vss)
}
C {devices/lab_wire.sym} 530 -260 0 0 {name=l21 sig_type=std_logic lab=dvdd,vss
}
C {devices/lab_wire.sym} 380 -290 3 0 {name=l23 sig_type=std_logic lab=vss}
C {devices/ngspice_probe.sym} 910 -370 0 0 {name=r1}
C {devices/ngspice_probe.sym} 530 -430 0 1 {name=r2}
C {devices/ngspice_probe.sym} 530 -390 0 1 {name=r3}
C {devices/ngspice_probe.sym} 530 -510 0 1 {name=r4}
C {devices/ngspice_probe.sym} 530 -490 0 1 {name=r5}
C {devices/vsource.sym} 380 -320 0 1 {name=vext value='vext'
}
C {devices/lab_wire.sym} 380 -390 0 1 {name=l25 sig_type=std_logic lab=vext
}
C {devices/ngspice_probe.sym} 530 -470 0 1 {name=r7}
C {devices/isource.sym} 380 -500 0 0 {name=I0 value=10u
}
C {devices/lab_wire.sym} 380 -530 3 1 {name=l22 sig_type=std_logic lab=avdd
}
C {devices/lab_wire.sym} 380 -430 0 1 {name=l24 sig_type=std_logic lab=vb
}
C {devices/vsource.sym} 420 -140 0 0 {name=ven value="pulse(0 'vdpwr' 't_en' 1n 1n 1m 1)"
}
C {devices/gnd.sym} 420 -110 0 0 {name=l2 lab=GND}
C {sch/top/gf180mcu_cw_ip_vref.sym} 530 -230 0 0 {name=xvref
}
C {devices/code.sym} 1140 -220 0 0 {name=CORNERS_NG 
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
C {devices/lab_wire.sym} 530 -300 0 0 {name=l3 sig_type=std_logic lab=en
}
