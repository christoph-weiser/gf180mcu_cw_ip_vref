v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 -0 0 -570 920 -570 920 0 0 -0 {}
P 4 5 920 -80 920 -260 1200 -260 1200 -80 920 -80 {}
P 4 5 920 -260 920 -570 1200 -570 1200 -260 920 -260 {}
N 550 -320 600 -320 {
lab=out}
N 420 -410 420 -370 {
lab=bias}
N 440 -410 440 -360 {
lab=vdd}
N 440 -280 440 -250 {
lab=vss}
N 320 -290 370 -290 {
lab=out}
N 320 -290 320 -150 {
lab=out}
N 320 -150 550 -150 {
lab=out}
N 550 -320 550 -150 {
lab=out}
N 490 -320 550 -320 {
lab=out}
N 320 -350 370 -350 {
lab=in}
C {devices/ipin.sym} 320 -350 0 0 {name=p4 lab=in
}
C {devices/opin.sym} 600 -320 2 1 {name=p6 lab=out}
C {devices/iopin.sym} 440 -410 3 0 {name=p8 lab=vdd}
C {devices/iopin.sym} 440 -250 1 0 {name=p9 lab=vss}
C {devices/titleblock.sym} 920 0 0 0 {name=l21 author="Christoph Weiser" license="Apache-2.0" year="2026" }
C {devices/notes.sym} 1010 -110 0 0 {name=h25
descr=bla
tclcommand="execute 0 sh -c \\"$\{editor\} [file dirname [xschem get schname]]/doc/notes.md\\""
}
C {sch/testbuffer/tb_amplifier/tb_amplifier.sym} 520 -320 0 0 {name=xamp
}
C {devices/iopin.sym} 420 -410 3 0 {name=p1 lab=bias
}
