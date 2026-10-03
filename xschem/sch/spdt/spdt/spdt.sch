v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1710 -80 1710 -310 1990 -310 1990 -80 1710 -80 {}
P 4 5 1710 -310 1710 -960 1990 -960 1990 -310 1710 -310 {}
P 4 5 0 0 0 -960 1990 -960 1990 0 0 0 {}
N 1010 -110 1080 -110 {lab=out}
N 1080 -310 1080 -110 {lab=out}
N 1010 -310 1080 -310 {lab=out}
N 890 -110 950 -110 {lab=inb}
N 890 -310 890 -110 {lab=inb}
N 890 -310 950 -310 {lab=inb}
N 980 -70 980 -50 {
lab=enb_buf}
N 920 -50 980 -50 {
lab=enb_buf}
N 1080 -750 1150 -750 {
lab=out}
N 1080 -210 1150 -210 {
lab=out}
N 1150 -750 1150 -210 {
lab=out}
N 1160 -470 1190 -470 {
lab=out}
N 1150 -470 1160 -470 {
lab=out}
N 450 -210 890 -210 {
lab=inb}
N 590 -510 590 -450 {lab=enb_buf}
N 500 -540 550 -540 {lab=en}
N 500 -540 500 -420 {lab=en}
N 500 -420 550 -420 {lab=en}
N 590 -480 680 -480 {lab=enb_buf}
N 770 -510 770 -450 {lab=en_buf}
N 680 -540 730 -540 {lab=enb_buf}
N 680 -540 680 -420 {lab=enb_buf}
N 680 -420 730 -420 {lab=enb_buf}
N 980 -370 980 -350 {
lab=en_buf}
N 920 -370 980 -370 {
lab=en_buf}
N 1010 -650 1080 -650 {lab=out}
N 1080 -850 1080 -650 {lab=out}
N 1010 -850 1080 -850 {lab=out}
N 890 -650 950 -650 {lab=ina}
N 890 -850 890 -650 {lab=ina}
N 890 -850 950 -850 {lab=ina}
N 980 -610 980 -590 {
lab=en_buf}
N 920 -590 980 -590 {
lab=en_buf}
N 450 -750 890 -750 {
lab=ina}
N 980 -910 980 -890 {
lab=enb_buf}
N 920 -910 980 -910 {
lab=enb_buf}
N 450 -480 500 -480 {
lab=en}
N 770 -480 820 -480 {
lab=en_buf}
C {devices/ipin.sym} 450 -480 2 1 {name=p2 lab=en}
C {devices/iopin.sym} 450 -820 0 1 {name=p3 lab=vss}
C {devices/iopin.sym} 450 -850 0 1 {name=p4 lab=vdd}
C {devices/iopin.sym} 450 -750 2 0 {name=p5 lab=ina
}
C {devices/iopin.sym} 1190 -470 0 0 {name=p6 lab=out}
C {devices/iopin.sym} 450 -210 2 0 {name=p1 lab=inb
}
C {devices/lab_wire.sym} 770 -480 0 1 {name=l13 sig_type=std_logic lab=en_buf
}
C {devices/lab_wire.sym} 980 -110 1 0 {name=l1 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 980 -310 1 1 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 920 -370 0 1 {name=l6 sig_type=std_logic lab=en_buf
}
C {devices/lab_wire.sym} 920 -50 2 0 {name=l9 sig_type=std_logic lab=enb_buf
}
C {devices/lab_wire.sym} 590 -540 0 1 {name=l3 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 590 -420 0 1 {name=l12 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 590 -480 0 1 {name=l16 sig_type=std_logic lab=enb_buf
}
C {devices/lab_wire.sym} 590 -570 1 0 {name=l17 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 590 -390 1 1 {name=l18 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 770 -540 0 1 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 770 -420 0 1 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 770 -570 1 0 {name=l14 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 770 -390 1 1 {name=l15 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 980 -650 1 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 980 -850 1 1 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 920 -590 2 0 {name=l10 sig_type=std_logic lab=en_buf
}
C {devices/lab_wire.sym} 920 -910 0 1 {name=l11 sig_type=std_logic lab=enb_buf
}
C {gf180_primitives/nfet_06v0.sym} 570 -420 0 0 {name=MI1
L=1u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/nfet_06v0.sym} 750 -420 0 0 {name=MI2
L=1u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/pfet_06v0.sym} 570 -540 0 0 {name=MI3
L=1u
W=8u
nf=1
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
C {gf180_primitives/pfet_06v0.sym} 750 -540 0 0 {name=MI4
L=1u
W=8u
nf=1
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
C {gf180_primitives/pfet_06v0.sym} 980 -330 1 0 {name=M2
L=1u
W=64u
nf=8
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
C {gf180_primitives/nfet_06v0.sym} 980 -90 3 0 {name=M1
L=1u
W=32u
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/nfet_06v0.sym} 980 -630 3 0 {name=M3
L=1u
W=32u
nf=4
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/pfet_06v0.sym} 980 -870 1 0 {name=M4
L=1u
W=64u
nf=8
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
C {devices/titleblock.sym} 1710 0 0 0 {name=l21 author="Christoph Weiser" license="Apache-2.0" year="2026" }
C {devices/notes.sym} 1800 -150 0 0 {name=h25
descr=bla
tclcommand="execute 0 sh -c \\"$\{editor\} [file dirname [xschem get schname]]/doc/notes.md\\""
}
