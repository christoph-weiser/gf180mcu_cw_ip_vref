v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 0 0 -700 830 -700 830 0 0 0 {}
P 4 5 830 -80 830 -280 1110 -280 1110 -80 830 -80 {}
P 4 5 830 -280 830 -700 1110 -700 1110 -280 830 -280 {}
N 390 -260 390 -230 { lab=vss}
N 390 -370 390 -340 { lab=vdd}
N 230 -210 230 -180 { lab=GND}
N 370 -440 370 -350 { lab=bias}
N 440 -300 500 -300 { lab=out}
N 500 -300 500 -170 { lab=out}
N 580 -210 580 -180 { lab=vss}
N 580 -300 580 -270 { lab=out}
N 500 -300 580 -300 { lab=out}
N 290 -270 290 -170 { lab=out}
N 290 -270 320 -270 { lab=out}
N 580 -300 660 -300 { lab=out}
N 660 -300 660 -270 { lab=out}
N 660 -210 660 -180 { lab=vss}
N 290 -170 500 -170 { lab=out}
N 230 -330 320 -330 { lab=in}
N 230 -330 230 -270 { lab=in}
N 50 -240 50 -210 { lab=vss}
N 50 -340 50 -300 { lab=vdd}
C {devices/lab_wire.sym} 390 -260 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 390 -370 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/code.sym} 980 -220 0 0 {name=NGSPICE
only_toplevel=true
value="
.param vdd=3.3
.param vcm='vdd/2'
.param ib=5.6u
.param cl=10p
.param rl=10e6


.control

let mc_runs   = 300
let seedvalue = 0
let steprun   = 0
let run       = 0

let vos_vec  = unitvec(mc_runs + 1)
let run_index = unitvec(mc_runs + 1) 

dowhile run <= mc_runs

    alterparam sw_stat_global   = 1
    alterparam sw_stat_mismatch = 1
    reset

    save v(in) v(out)

    op

    let vos_vec[run] = v(out) - v(in)
    let run_index[run] = run

    let run = run + 1
end

setplot new
let vdiff = vos_vec
let vos = vdiff

print mean(vos)
print stddev(vos)

set wr_singlescale
set wr_vecnames
wrdata data.csv vos

.endc
"}
C {devices/lab_wire.sym} 370 -390 3 0 {name=l16 sig_type=std_logic lab=bias}
C {devices/gnd.sym} 230 -180 0 0 {name=l8 lab=GND}
C {devices/isource.sym} 370 -470 0 0 {name=ib value='ib'
}
C {devices/capa.sym} 580 -240 0 0 {name=cl m=1 value='cl'
}
C {devices/lab_wire.sym} 580 -210 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 440 -300 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/res.sym} 660 -240 2 1 {name=rl m=1 value='rl'
}
C {devices/lab_wire.sym} 660 -210 3 0 {name=l17 sig_type=std_logic lab=vss}
C {devices/vsource.sym} 230 -240 0 0 {name=vcm value='vcm'
}
C {devices/titleblock.sym} 830 0 0 0 {name=l15 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/vsource.sym} 50 -270 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 50 -180 0 0 {name=vss value=0
}
C {devices/gnd.sym} 50 -150 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 50 -340 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 50 -240 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 320 -330 0 0 {name=l4 sig_type=std_logic lab=in
}
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 470 -300 0 0 {name=xamp
}
C {devices/lab_wire.sym} 370 -500 3 1 {name=l7 sig_type=std_logic lab=vdd}
C {devices/code.sym} 850 -220 0 0 {name=CORNERS_NG 
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
