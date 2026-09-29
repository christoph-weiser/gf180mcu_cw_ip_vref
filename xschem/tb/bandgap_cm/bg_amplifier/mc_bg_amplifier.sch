v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1060 -80 1060 -280 1340 -280 1340 -80 1060 -80 {}
P 4 5 0 0 0 -650 1060 -650 1060 0 0 0 {}
P 4 5 1060 -80 1060 -280 1340 -280 1340 -80 1060 -80 {}
P 4 5 1060 -280 1060 -650 1340 -650 1340 -280 1060 -280 {}
N 580 -330 580 -300 { lab=vss}
N 580 -440 580 -410 { lab=vdd}
N 420 -280 420 -250 { lab=GND}
N 630 -370 690 -370 { lab=out}
N 690 -370 690 -190 { lab=out}
N 770 -280 770 -250 { lab=vss}
N 770 -370 770 -340 { lab=out}
N 690 -370 770 -370 { lab=out}
N 480 -340 480 -190 { lab=out}
N 480 -340 510 -340 { lab=out}
N 480 -190 690 -190 { lab=out}
N 420 -400 510 -400 { lab=in}
N 420 -400 420 -340 { lab=in}
N 240 -310 240 -280 { lab=vss}
N 240 -410 240 -370 { lab=vdd}
N 560 -320 560 -280 {
lab=bias}
C {devices/lab_wire.sym} 580 -330 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 580 -440 3 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/code.sym} 1210 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* control 

.param vdd=3.3
.param vcm='vdd/2'
.param ib=1u
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
C {devices/gnd.sym} 420 -250 0 0 {name=l8 lab=GND}
C {devices/capa.sym} 770 -310 0 0 {name=cl m=1 value='cl'
}
C {devices/lab_wire.sym} 770 -280 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 630 -370 0 1 {name=l11 sig_type=std_logic lab=out}
C {devices/vsource.sym} 420 -310 0 0 {name=vcm value='vcm'
}
C {devices/vsource.sym} 240 -340 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 240 -250 0 0 {name=vss value=0
}
C {devices/gnd.sym} 240 -220 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 240 -410 3 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 240 -310 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 510 -400 0 0 {name=l4 sig_type=std_logic lab=in
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
C {sch/bandgap_cm/bg_amplifier/bg_amplifier.sym} 660 -370 0 0 {name=xamp
}
C {devices/lab_wire.sym} 560 -320 3 0 {name=l7 sig_type=std_logic lab=bias
}
C {devices/lab_wire.sym} 560 -220 3 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/isource.sym} 560 -250 0 0 {name=ib value='ib'
}
C {devices/titleblock.sym} 1060 0 0 0 {name=l14 author="Christoph Weiser"}
C {devices/code.sym} 1140 -510 0 0 {name=EXT 
only_toplevel=false
format="tcleval( @value )"
value="* extract

* pex
*.include \\\\$::DESIGN_PATH\\\\/sch/bandgap_cm/bg_amplifier/bg_amplifier.pex.spice
"}
