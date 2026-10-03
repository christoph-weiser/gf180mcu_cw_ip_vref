v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1100 -80 1100 -310 1380 -310 1380 -80 1100 -80 {}
P 4 5 1100 -310 1100 -760 1380 -760 1380 -310 1100 -310 {}
P 4 5 0 0 0 -760 1380 -760 1380 0 0 0 {}
N 270 -300 270 -240 {lab=inb_buf}
N 200 -330 230 -330 {lab=in}
N 200 -330 200 -210 {lab=in}
N 200 -210 230 -210 {lab=in}
N 680 -240 680 -170 {lab=vss}
N 940 -240 940 -170 {lab=vss}
N 720 -500 750 -500 {
lab=out}
N 870 -500 900 -500 {
lab=outb}
N 750 -390 870 -500 {
lab=outb}
N 750 -500 870 -390 {
lab=out}
N 750 -390 750 -350 {
lab=outb}
N 680 -350 750 -350 {
lab=outb}
N 870 -390 870 -350 {
lab=out}
N 870 -350 940 -350 {
lab=out}
N 940 -470 940 -380 {
lab=out}
N 940 -380 940 -360 {
lab=out}
N 680 -470 680 -350 {
lab=outb}
N 680 -570 680 -530 {
lab=vddh}
N 680 -570 940 -570 {
lab=vddh}
N 940 -570 940 -540 {
lab=vddh}
N 940 -540 940 -530 {
lab=vddh}
N 150 -270 200 -270 {
lab=in}
N 270 -270 340 -270 {
lab=inb_buf}
N 950 -390 970 -390 {
lab=out}
N 940 -390 950 -390 {
lab=out}
N 270 -380 270 -360 {
lab=vddl}
N 180 -380 270 -380 {
lab=vddl}
N 620 -150 940 -150 {
lab=vss}
N 940 -170 940 -150 {
lab=vss}
N 680 -170 680 -150 {
lab=vss}
N 270 -180 270 -150 {
lab=vss}
N 190 -150 270 -150 {
lab=vss}
N 680 -270 740 -270 {
lab=vss}
N 740 -270 740 -150 {
lab=vss}
N 880 -270 940 -270 {
lab=vss}
N 880 -270 880 -150 {
lab=vss}
N 270 -210 310 -210 {
lab=vss}
N 310 -210 310 -150 {
lab=vss}
N 270 -150 310 -150 {
lab=vss}
N 310 -380 310 -330 {
lab=vddl}
N 270 -380 310 -380 {
lab=vddl}
N 270 -330 310 -330 {
lab=vddl}
N 940 -500 970 -500 {
lab=vddh}
N 970 -570 970 -500 {
lab=vddh}
N 950 -570 970 -570 {
lab=vddh}
N 940 -570 950 -570 {
lab=vddh}
N 650 -500 680 -500 {
lab=vddh}
N 650 -570 650 -500 {
lab=vddh}
N 650 -570 680 -570 {
lab=vddh}
N 620 -570 650 -570 {
lab=vddh}
N 940 -360 940 -350 {
lab=out}
N 680 -320 680 -300 {
lab=outb}
N 940 -350 940 -300 {
lab=out}
N 680 -350 680 -320 {
lab=outb}
N 430 -300 430 -240 {lab=in_buf}
N 360 -330 390 -330 {lab=inb_buf}
N 360 -330 360 -210 {lab=inb_buf}
N 360 -210 390 -210 {lab=inb_buf}
N 430 -270 500 -270 {
lab=in_buf}
N 430 -380 430 -360 {
lab=vddl}
N 430 -180 430 -150 {
lab=vss}
N 430 -210 470 -210 {
lab=vss}
N 470 -210 470 -150 {
lab=vss}
N 430 -150 470 -150 {
lab=vss}
N 470 -380 470 -330 {
lab=vddl}
N 430 -380 470 -380 {
lab=vddl}
N 430 -330 470 -330 {
lab=vddl}
N 340 -270 360 -270 {
lab=inb_buf}
N 310 -380 430 -380 {
lab=vddl}
N 310 -150 430 -150 {
lab=vss}
N 470 -150 620 -150 {
lab=vss}
C {devices/iopin.sym} 180 -380 2 0 {name=p1 lab=vddl
}
C {devices/ipin.sym} 150 -270 0 0 {name=p3 lab=in}
C {devices/opin.sym} 970 -390 0 0 {name=p4 lab=out}
C {devices/iopin.sym} 620 -570 2 0 {name=p5 lab=vddh
}
C {devices/iopin.sym} 190 -150 2 0 {name=p6 lab=vss
}
C {devices/lab_wire.sym} 680 -390 0 1 {name=l1 sig_type=std_logic lab=outb
}
C {devices/lab_wire.sym} 340 -270 0 0 {name=l2 sig_type=std_logic lab=inb_buf
}
C {devices/lab_wire.sym} 500 -270 0 0 {name=l3 sig_type=std_logic lab=in_buf
}
C {devices/lab_wire.sym} 640 -270 0 0 {name=l4 sig_type=std_logic lab=in_buf
}
C {devices/lab_wire.sym} 980 -270 0 1 {name=l5 sig_type=std_logic lab=inb_buf
}
C {devices/titleblock.sym} 1100 0 0 0 {name=l21 author="Christoph Weiser" license="Apache-2.0" year="2026" }
C {devices/notes.sym} 1190 -150 0 0 {name=h25
descr=bla
tclcommand="execute 0 sh -c \\"$\{editor\} [file dirname [xschem get schname]]/doc/notes.md\\""
}
C {gf180_primitives/nfet_06v0.sym} 250 -210 0 0 {name=MI1
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
C {gf180_primitives/nfet_06v0.sym} 410 -210 0 0 {name=MI2
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
C {gf180_primitives/nfet_06v0.sym} 660 -270 0 0 {name=M1
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
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/nfet_06v0.sym} 960 -270 0 1 {name=M2
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
model=nfet_06v0
spiceprefix=X
}
C {gf180_primitives/pfet_06v0.sym} 250 -330 0 0 {name=MI3
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
C {gf180_primitives/pfet_06v0.sym} 410 -330 0 0 {name=MI4
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
C {gf180_primitives/pfet_06v0.sym} 700 -500 0 1 {name=M3
L=1u
W=2u
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
C {gf180_primitives/pfet_06v0.sym} 920 -500 0 0 {name=M4
L=1u
W=2u
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
