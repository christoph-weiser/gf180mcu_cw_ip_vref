v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 -0 0 -1060 1920 -1060 1920 0 0 -0 {}
P 4 5 1920 -80 1920 -1060 2200 -1060 2200 -80 1920 -80 {}
N 280 -330 280 -290 {
lab=a6}
N 280 -430 280 -390 {
lab=pos}
N 180 -550 270 -550 {
lab=pos}
N 270 -550 330 -550 {
lab=pos}
N 390 -550 450 -550 {
lab=a6}
N 450 -550 510 -550 {
lab=a6}
N 570 -550 630 -550 {
lab=a5}
N 630 -550 690 -550 {
lab=a5}
N 750 -550 810 -550 {
lab=a4}
N 810 -550 870 -550 {
lab=a4}
N 930 -550 990 -550 {
lab=a3}
N 990 -550 1050 -550 {
lab=a3}
N 460 -330 460 -290 {
lab=a5}
N 460 -430 460 -390 {
lab=a6}
N 640 -330 640 -290 {
lab=a4}
N 640 -430 640 -390 {
lab=a5}
N 820 -330 820 -290 {
lab=a3}
N 820 -430 820 -390 {
lab=a4}
N 1650 -550 1750 -550 {
lab=neg}
N 1000 -330 1000 -290 {
lab=a2}
N 1000 -430 1000 -390 {
lab=a3}
N 1180 -330 1180 -290 {
lab=a1}
N 1180 -430 1180 -390 {
lab=a2}
N 1110 -550 1170 -550 {
lab=a2}
N 1170 -550 1230 -550 {
lab=a2}
N 1350 -550 1410 -550 {
lab=a1}
N 1290 -550 1350 -550 {
lab=a1}
N 1360 -330 1360 -290 {
lab=a0}
N 1360 -430 1360 -390 {
lab=a1}
N 1530 -550 1590 -550 {
lab=a0}
N 1470 -550 1530 -550 {
lab=a0}
N 1550 -330 1550 -290 {
lab=neg}
N 1550 -430 1550 -390 {
lab=a0}
N 2020 -530 2050 -530 {
lab=body}
N 2110 -530 2140 -530 {
lab=body}
N 2140 -570 2140 -530 {
lab=body}
N 2020 -570 2140 -570 {
lab=body}
N 2020 -570 2020 -530 {
lab=body}
N 2080 -570 2080 -550 {
lab=body}
C {devices/titleblock.sym} 1920 0 0 0 {name=l21 author="Christoph Weiser" license="Apache-2.0" year="2026" }
C {devices/ipin.sym} 170 -770 0 0 {name=p4 lab=d[7:0]
}
C {devices/iopin.sym} 180 -550 2 0 {name=p7 lab=pos
}
C {devices/iopin.sym} 1750 -550 2 1 {name=p1 lab=neg
}
C {devices/iopin.sym} 170 -650 2 0 {name=p2 lab=vss
}
C {devices/iopin.sym} 170 -710 0 1 {name=p3 lab=body
}
C {gf180_primitives/nfet_06v0.sym} 260 -360 0 0 {name=M7
L=1u
W=32u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/lab_wire.sym} 280 -360 0 1 {name=l2 sig_type=std_logic lab=vss
}
C {devices/lab_wire.sym} 280 -430 0 0 {name=l4 sig_type=std_logic lab=pos
}
C {devices/lab_wire.sym} 450 -550 0 0 {name=l7 sig_type=std_logic lab=a6
}
C {devices/lab_wire.sym} 630 -550 0 0 {name=l10 sig_type=std_logic lab=a5
}
C {devices/lab_wire.sym} 240 -360 0 0 {name=l12 sig_type=std_logic lab=d[7]
}
C {devices/lab_wire.sym} 810 -550 0 0 {name=l15 sig_type=std_logic lab=a4
}
C {gf180_primitives/nfet_06v0.sym} 440 -360 0 0 {name=M6
L=1u
W=32u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/lab_wire.sym} 460 -360 0 1 {name=l30 sig_type=std_logic lab=vss
}
C {devices/lab_wire.sym} 460 -430 0 0 {name=l31 sig_type=std_logic lab=a6
}
C {devices/lab_wire.sym} 420 -360 0 0 {name=l32 sig_type=std_logic lab=d[6]
}
C {gf180_primitives/nfet_06v0.sym} 620 -360 0 0 {name=M5
L=1u
W=32u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/lab_wire.sym} 640 -360 0 1 {name=l34 sig_type=std_logic lab=vss
}
C {devices/lab_wire.sym} 640 -430 0 0 {name=l35 sig_type=std_logic lab=a5
}
C {devices/lab_wire.sym} 600 -360 0 0 {name=l36 sig_type=std_logic lab=d[5]
}
C {gf180_primitives/nfet_06v0.sym} 800 -360 0 0 {name=M4
L=1u
W=32u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/lab_wire.sym} 820 -360 0 1 {name=l38 sig_type=std_logic lab=vss
}
C {devices/lab_wire.sym} 820 -430 0 0 {name=l39 sig_type=std_logic lab=a4
}
C {devices/lab_wire.sym} 780 -360 0 0 {name=l40 sig_type=std_logic lab=d[4]
}
C {devices/lab_wire.sym} 280 -290 0 0 {name=l13 sig_type=std_logic lab=a6
}
C {devices/lab_wire.sym} 460 -290 0 0 {name=l27 sig_type=std_logic lab=a5
}
C {devices/lab_wire.sym} 640 -290 0 0 {name=l33 sig_type=std_logic lab=a4
}
C {devices/lab_wire.sym} 820 -290 0 0 {name=l37 sig_type=std_logic lab=a3
}
C {devices/lab_wire.sym} 990 -550 0 0 {name=l1 sig_type=std_logic lab=a3
}
C {gf180_primitives/nfet_06v0.sym} 980 -360 0 0 {name=M3
L=1u
W=32u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/lab_wire.sym} 1000 -360 0 1 {name=l3 sig_type=std_logic lab=vss
}
C {devices/lab_wire.sym} 1000 -430 0 0 {name=l5 sig_type=std_logic lab=a3
}
C {devices/lab_wire.sym} 960 -360 0 0 {name=l6 sig_type=std_logic lab=d[3]
}
C {devices/lab_wire.sym} 1000 -290 0 0 {name=l8 sig_type=std_logic lab=a2
}
C {gf180_primitives/ppolyf_u_1k_6p0.sym} 360 -550 1 0 {name=R2
W=1e-6
L=40e-6
s=1
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1
}
C {devices/lab_wire.sym} 360 -570 1 0 {name=l9 sig_type=std_logic lab=body
}
C {gf180_primitives/ppolyf_u_1k_6p0.sym} 540 -550 1 0 {name=R3
W=1e-6
L=20e-6
s=1
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1
}
C {devices/lab_wire.sym} 540 -570 1 0 {name=l11 sig_type=std_logic lab=body
}
C {gf180_primitives/ppolyf_u_1k_6p0.sym} 720 -550 1 0 {name=R5
W=1e-6
L=10e-6
s=1
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1
}
C {devices/lab_wire.sym} 720 -570 1 0 {name=l14 sig_type=std_logic lab=body
}
C {gf180_primitives/ppolyf_u_1k_6p0.sym} 900 -550 1 0 {name=R4
W=1e-6
L=5e-6
s=1
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1
}
C {devices/lab_wire.sym} 900 -570 1 0 {name=l16 sig_type=std_logic lab=body
}
C {gf180_primitives/ppolyf_u_1k_6p0.sym} 1080 -550 1 0 {name=R3[1:0]
W=1e-6
L=5e-6
s=1
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1
}
C {devices/lab_wire.sym} 1080 -570 1 0 {name=l17 sig_type=std_logic lab=body
}
C {gf180_primitives/nfet_06v0.sym} 1160 -360 0 0 {name=M2
L=1u
W=32u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/lab_wire.sym} 1180 -360 0 1 {name=l19 sig_type=std_logic lab=vss
}
C {devices/lab_wire.sym} 1180 -430 0 0 {name=l20 sig_type=std_logic lab=a2
}
C {devices/lab_wire.sym} 1140 -360 0 0 {name=l22 sig_type=std_logic lab=d[2]
}
C {devices/lab_wire.sym} 1180 -290 0 0 {name=l23 sig_type=std_logic lab=a1
}
C {devices/lab_wire.sym} 1170 -550 0 0 {name=l24 sig_type=std_logic lab=a2
}
C {gf180_primitives/ppolyf_u_1k_6p0.sym} 1260 -550 1 0 {name=R2[3:0]
W=1e-6
L=5e-6
s=1
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1
}
C {devices/lab_wire.sym} 1260 -570 1 0 {name=l26 sig_type=std_logic lab=body
}
C {devices/lab_wire.sym} 1350 -550 0 0 {name=l29 sig_type=std_logic lab=a1
}
C {gf180_primitives/ppolyf_u_1k_6p0.sym} 1440 -550 1 0 {name=R1[7:0]
W=1e-6
L=5e-6
s=1
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1
}
C {devices/lab_wire.sym} 1440 -570 1 0 {name=l41 sig_type=std_logic lab=body
}
C {gf180_primitives/nfet_06v0.sym} 1340 -360 0 0 {name=M1
L=1u
W=32u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/lab_wire.sym} 1360 -360 0 1 {name=l46 sig_type=std_logic lab=vss
}
C {devices/lab_wire.sym} 1360 -430 0 0 {name=l47 sig_type=std_logic lab=a1
}
C {devices/lab_wire.sym} 1320 -360 0 0 {name=l48 sig_type=std_logic lab=d[1]
}
C {devices/lab_wire.sym} 1360 -290 0 0 {name=l49 sig_type=std_logic lab=a0
}
C {devices/lab_wire.sym} 1530 -550 0 0 {name=l18 sig_type=std_logic lab=a0
}
C {devices/lab_wire.sym} 1620 -570 1 0 {name=l25 sig_type=std_logic lab=body
}
C {gf180_primitives/nfet_06v0.sym} 1530 -360 0 0 {name=M0
L=1u
W=32u
nf=4
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/lab_wire.sym} 1550 -360 0 1 {name=l28 sig_type=std_logic lab=vss
}
C {devices/lab_wire.sym} 1550 -430 0 0 {name=l42 sig_type=std_logic lab=a0
}
C {devices/lab_wire.sym} 1510 -360 0 0 {name=l43 sig_type=std_logic lab=d[0]
}
C {devices/lab_wire.sym} 1550 -290 0 0 {name=l44 sig_type=std_logic lab=neg
}
C {gf180_primitives/ppolyf_u_1k_6p0.sym} 1620 -550 1 0 {name=R0[15:0]
W=1e-6
L=5e-6
s=1
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1
}
C {gf180_primitives/ppolyf_u_1k_6p0.sym} 2080 -530 1 0 {name=R1
W=1e-6
L=5e-6
s=1
model=ppolyf_u_1k_6p0
spiceprefix=X
m=5
}
C {devices/lab_wire.sym} 2080 -570 0 1 {name=l45 sig_type=std_logic lab=body
}
