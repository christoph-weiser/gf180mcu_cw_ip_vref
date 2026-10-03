v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 -0 0 -800 1260 -800 1260 0 0 -0 {}
P 4 5 1260 -80 1260 -260 1540 -260 1540 -80 1260 -80 {}
P 4 5 1260 -260 1260 -800 1540 -800 1540 -260 1260 -260 {}
P 4 5 190 -190 190 -150 180 -160 200 -160 190 -150 {}
P 4 5 360 -190 360 -150 350 -160 370 -160 360 -150 {}
P 4 5 690 -190 690 -150 680 -160 700 -160 690 -150 {}
P 4 5 1130 -190 1130 -150 1120 -160 1140 -160 1130 -150 {}
T {1x} 178 -145 0 0 0.4 0.4 {}
T {1x} 348 -145 0 0 0.4 0.4 {}
T {1x} 678 -145 0 0 0.4 0.4 {}
T {6x} 1108 -145 0 0 0.4 0.4 {}
N 160 -290 190 -290 { lab=vss}
N 190 -380 190 -320 {
lab=bias}
N 190 -350 270 -350 {
lab=bias}
N 270 -350 270 -290 {
lab=bias}
N 190 -260 190 -200 {
lab=vss}
N 600 -400 600 -360 {
lab=vcm}
N 600 -360 780 -360 {
lab=vcm}
N 780 -400 780 -360 {
lab=vcm}
N 690 -360 690 -320 {
lab=vcm}
N 690 -260 690 -200 {
lab=vss}
N 620 -290 650 -290 {
lab=bias}
N 600 -560 600 -460 {
lab=mirr}
N 780 -560 780 -460 {
lab=comp}
N 640 -590 740 -590 {
lab=mirr}
N 530 -430 560 -430 {
lab=inn}
N 820 -430 850 -430 {
lab=inp}
N 600 -510 690 -510 {
lab=mirr}
N 690 -590 690 -510 {
lab=mirr}
N 90 -660 780 -660 {
lab=vdd}
N 780 -660 780 -620 {
lab=vdd}
N 600 -660 600 -620 {
lab=vdd}
N 1060 -290 1090 -290 {
lab=bias}
N 690 -290 720 -290 { lab=vss}
N 1130 -290 1160 -290 { lab=vss}
N 600 -430 630 -430 { lab=vss}
N 750 -430 780 -430 { lab=vss}
N 780 -590 810 -590 { lab=vdd}
N 570 -590 600 -590 { lab=vdd}
N 1130 -590 1160 -590 { lab=vdd}
N 780 -660 1130 -660 {
lab=vdd}
N 1130 -660 1130 -620 {
lab=vdd}
N 870 -590 1090 -590 {
lab=comp}
N 780 -510 870 -510 {
lab=comp}
N 870 -590 870 -510 {
lab=comp}
N 1130 -560 1130 -510 {
lab=out}
N 1130 -510 1130 -320 {
lab=out}
N 1130 -260 1130 -200 {
lab=vss}
N 90 -200 1130 -200 {
lab=vss}
N 1130 -510 1180 -510 {
lab=out}
N 230 -290 270 -290 {
lab=bias}
N 270 -290 320 -290 {
lab=bias}
N 360 -260 360 -200 {
lab=vss}
N 360 -440 360 -320 {
lab=vbm}
N 270 -470 320 -470 {
lab=vbm}
N 270 -470 270 -410 {
lab=vbm}
N 270 -410 360 -410 {
lab=vbm}
N 270 -590 320 -590 {
lab=vbt}
N 270 -590 270 -530 {
lab=vbt}
N 270 -530 360 -530 {
lab=vbt}
N 360 -560 360 -500 {
lab=vbt}
N 360 -660 360 -620 {
lab=vdd}
N 360 -590 390 -590 { lab=vdd}
N 360 -470 390 -470 { lab=vdd}
N 360 -290 390 -290 { lab=vss}
N 960 -510 1000 -510 {
lab=gc}
N 870 -510 900 -510 {
lab=comp}
N 1060 -510 1130 -510 {
lab=out}
N 1410 -350 1430 -350 {
lab=vss}
N 1430 -380 1430 -350 {
lab=vss}
N 1410 -380 1430 -380 {
lab=vss}
N 1430 -350 1430 -320 {
lab=vss}
N 1410 -320 1430 -320 {
lab=vss}
N 1370 -320 1410 -320 {
lab=vss}
N 1370 -350 1370 -320 {
lab=vss}
N 1370 -380 1370 -350 {
lab=vss}
N 1370 -380 1410 -380 {
lab=vss}
N 1410 -450 1430 -450 {
lab=vdd}
N 1430 -480 1430 -450 {
lab=vdd}
N 1410 -480 1430 -480 {
lab=vdd}
N 1430 -450 1430 -420 {
lab=vdd}
N 1410 -420 1430 -420 {
lab=vdd}
N 1370 -420 1410 -420 {
lab=vdd}
N 1370 -450 1370 -420 {
lab=vdd}
N 1370 -480 1370 -450 {
lab=vdd}
N 1370 -480 1410 -480 {
lab=vdd}
C {devices/ipin.sym} 530 -430 0 0 {name=p3 lab=inn}
C {devices/ipin.sym} 850 -430 2 0 {name=p4 lab=inp}
C {devices/opin.sym} 1180 -510 2 1 {name=p6 lab=out}
C {devices/iopin.sym} 190 -380 3 0 {name=p7 lab=bias}
C {devices/iopin.sym} 90 -660 2 0 {name=p8 lab=vdd}
C {devices/iopin.sym} 90 -200 2 0 {name=p9 lab=vss}
C {devices/lab_wire.sym} 190 -290 0 0 {name=l1 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 650 -290 0 0 {name=l2 sig_type=std_logic lab=bias
}
C {devices/lab_wire.sym} 1090 -290 0 0 {name=l3 sig_type=std_logic lab=bias
}
C {devices/lab_wire.sym} 690 -290 0 1 {name=l4 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 1130 -290 0 1 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 600 -430 0 1 {name=l6 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 780 -430 0 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 780 -590 0 1 {name=l8 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} 600 -590 0 0 {name=l9 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} 1130 -590 0 1 {name=l10 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} 690 -360 0 0 {name=l11 sig_type=std_logic lab=vcm
}
C {devices/lab_wire.sym} 690 -590 0 0 {name=l12 sig_type=std_logic lab=mirr
}
C {devices/lab_wire.sym} 870 -510 0 0 {name=l13 sig_type=std_logic lab=comp
}
C {devices/lab_wire.sym} 360 -410 0 0 {name=l14 sig_type=std_logic lab=vbm
}
C {devices/lab_wire.sym} 360 -530 0 0 {name=l15 sig_type=std_logic lab=vbt
}
C {devices/lab_wire.sym} 360 -590 0 1 {name=l16 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} 360 -470 0 1 {name=l17 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} 360 -290 0 1 {name=l18 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 1260 0 0 0 {name=l21 author="Christoph Weiser" license="Apache-2.0" year="2026" }
C {devices/notes.sym} 1350 -110 0 0 {name=h25
descr=bla
tclcommand="execute 0 sh -c \\"$\{editor\} [file dirname [xschem get schname]]/doc/notes.md\\""
}
C {devices/ngspice_get_expr.sym} 590 -460 0 1 {name=r42 node="vsat=[to_eng [expr \{ [ ngspice::get_node vsat_xm1 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 610 -460 0 0 {name=r31 node="gm=[to_eng [expr \{ [ ngspice::get_node gm_xm1 ]\} ] ]"
descr=""
}
C {devices/ngspice_probe.sym} 270 -590 0 1 {name=r3}
C {devices/ngspice_probe.sym} 270 -470 0 1 {name=r1}
C {devices/ngspice_probe.sym} 270 -350 0 0 {name=r2}
C {devices/ngspice_probe.sym} 690 -590 0 0 {name=r4}
C {devices/ngspice_probe.sym} 600 -510 0 0 {name=r5}
C {devices/ngspice_probe.sym} 780 -510 0 1 {name=r6}
C {devices/ngspice_probe.sym} 1130 -510 0 0 {name=r7}
C {devices/ngspice_probe.sym} 690 -360 0 0 {name=r8}
C {devices/ngspice_get_expr.sym} 770 -460 0 1 {name=r9 node="vsat=[to_eng [expr \{ [ ngspice::get_node vsat_xm2 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 790 -460 0 0 {name=r10 node="gm=[to_eng [expr \{ [ ngspice::get_node gm_xm2 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 790 -560 2 1 {name=r12 node="vsat=[to_eng [expr \{ [ ngspice::get_node vsat_xm4 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 700 -320 0 0 {name=r13 node="vsat=[to_eng [expr \{ [ ngspice::get_node vsat_xm5 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 1140 -560 2 1 {name=r14 node="vsat=[to_eng [expr \{ [ ngspice::get_node vsat_xm7 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 1140 -320 0 0 {name=r15 node="vsat=[to_eng [expr \{ [ ngspice::get_node vsat_xm6 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 370 -560 2 1 {name=r16 node="vsat=[to_eng [expr \{ [ ngspice::get_node vsat_xmb4 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 370 -440 2 1 {name=r17 node="vsat=[to_eng [expr \{ [ ngspice::get_node vsat_xmb3 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 370 -320 0 0 {name=r18 node="vsat=[to_eng [expr \{ [ ngspice::get_node vsat_xmb2 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 200 -320 0 0 {name=r19 node="vsat=[to_eng [expr \{ [ ngspice::get_node vsat_xmb1 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 210 -150 0 0 {name=r30 node="i=[to_eng [expr \{ [ ngspice::get_node id_xmb1 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 380 -150 0 0 {name=r20 node="i=[to_eng [expr \{ [ ngspice::get_node id_xmb2 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 710 -150 0 0 {name=r21 node="i=[to_eng [expr \{ [ ngspice::get_node id_xm5 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 1150 -150 0 0 {name=r22 node="i=[to_eng [expr \{ [ ngspice::get_node id_xm6 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 680 -320 0 1 {name=r23 node="vov=[to_eng [expr \{ [ ngspice::get_node vov_xm5 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 350 -320 0 1 {name=r24 node="vov=[to_eng [expr \{ [ ngspice::get_node vov_xmb2 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 1120 -320 0 1 {name=r26 node="vov=[to_eng [expr \{ [ ngspice::get_node vov_xm6 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 180 -320 0 1 {name=r27 node="vov=[to_eng [expr \{ [ ngspice::get_node vov_xmb1 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 770 -560 2 0 {name=r28 node="vov=[to_eng [expr \{ [ ngspice::get_node vov_xm4 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 610 -560 2 1 {name=r11 node="vsat=[to_eng [expr \{ [ ngspice::get_node vsat_xm3 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 590 -560 2 0 {name=r29 node="vov=[to_eng [expr \{ [ ngspice::get_node vov_xm3 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 350 -560 2 0 {name=r32 node="vov=[to_eng [expr \{ [ ngspice::get_node vov_xmb4 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 350 -440 2 0 {name=r33 node="vov=[to_eng [expr \{ [ ngspice::get_node vov_xmb3 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 1120 -560 2 0 {name=r34 node="vov=[to_eng [expr \{ [ ngspice::get_node vov_xm7 ]\} ] ]"
descr=""
}
C {gf180_primitives/pfet_06v0.sym} 620 -590 0 1 {name=M3
L=4u
W=16u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {gf180_primitives/pfet_06v0.sym} 760 -590 0 0 {name=M4
L=4u
W=16u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {gf180_primitives/nfet_06v0.sym} 800 -430 0 1 {name=M2
L=2u
W=16u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/nfet_06v0.sym} 580 -430 0 0 {name=M1
L=2u
W=16u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/nfet_06v0.sym} 670 -290 0 0 {name=M5
L=1u
W=16u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/nfet_06v0.sym} 1110 -290 0 0 {name=M6
L=1u
W=16u
nf=2
m=12
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/pfet_06v0.sym} 1110 -590 0 0 {name=M7
L=1u
W=96u
nf=12
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {gf180_primitives/nfet_06v0.sym} 210 -290 0 1 {name=MB1
L=1u
W=16u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/nfet_06v0.sym} 340 -290 0 0 {name=MB2
L=1u
W=16u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/pfet_06v0.sym} 340 -470 0 0 {name=MB3
L=1u
W=16u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {gf180_primitives/pfet_06v0.sym} 340 -590 0 0 {name=MB4
L=1u
W=16u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {gf180_primitives/ppolyf_u_1k_6p0.sym} 930 -510 3 0 {name=RCC
W=2e-6
L=38e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1
}
C {devices/lab_wire.sym} 930 -490 1 1 {name=l19 sig_type=std_logic lab=vss}
C {devices/ngspice_get_expr.sym} 590 -400 2 0 {name=r36 node="vov=[to_eng [expr \{ [ ngspice::get_node vov_xm1 ]\} ] ]"
descr=""
}
C {devices/ngspice_get_expr.sym} 790 -400 2 1 {name=r35 node="vov=[to_eng [expr \{ [ ngspice::get_node vov_xm2 ]\} ] ]"
descr=""
}
C {gf180_primitives/nfet_06v0.sym} 1390 -350 0 0 {name=MDUM1
L=2u
W=16u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/lab_wire.sym} 1430 -350 0 1 {name=l20 sig_type=std_logic lab=vss}
C {gf180_primitives/pfet_06v0.sym} 1390 -450 0 0 {name=MDUM2
L=4u
W=16u
nf=2
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {devices/lab_wire.sym} 1430 -450 0 1 {name=l22 sig_type=std_logic lab=vdd
}
C {devices/lab_wire.sym} 1000 -510 0 0 {name=l23 sig_type=std_logic lab=gc
}
C {gf180_primitives/cap_mim_2f0_m4m5_noshield.sym} 1030 -510 1 0 {name=C1
W=30e-6
L=30e-6
model=cap_mim_2f0_m4m5_noshield
spiceprefix=X
m=1
}
