v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 0 0 -940 1850 -940 1850 0 0 0 {}
P 4 5 1570 -310 1570 -780 1850 -780 1850 -310 1570 -310 {}
P 4 5 1570 -80 1570 -310 1850 -310 1850 -80 1570 -80 {}
P 4 5 1570 -780 1570 -940 1850 -940 1850 -780 1570 -780 {}
N 610 -590 650 -590 {
lab=vdd_5v0}
N 610 -550 650 -550 {
lab=vss_5v0}
N 610 -570 650 -570 {
lab=vdd_3v3}
N 610 -530 650 -530 {
lab=vss_3v3}
N 610 -510 650 -510 {
lab=analog_bus0}
N 610 -470 650 -470 {
lab=s2_an[0]}
N 950 -450 1030 -450 {
lab=s2_an[1]}
N 610 -380 650 -380 {
lab=dig_in[10]}
N 610 -360 650 -360 {
lab=dig_in[2:9]}
N 610 -340 650 -340 {
lab=dig_in[0:1]}
C {sch/top/gf180mcu_cw_ip_vref.sym} 650 -310 0 0 {name=xslot2
}
C {devices/iopin.sym} 610 -590 2 0 {name=p2 lab=vdd_5v0
}
C {devices/iopin.sym} 610 -550 2 0 {name=p1 lab=vss_5v0
}
C {devices/iopin.sym} 610 -570 2 0 {name=p3 lab=vdd_3v3
}
C {devices/iopin.sym} 610 -530 2 0 {name=p4 lab=vss_3v3
}
C {devices/iopin.sym} 610 -510 2 0 {name=p5 lab=analog_bus0
}
C {devices/iopin.sym} 610 -470 2 0 {name=p6 lab=s2_an[0]
}
C {devices/iopin.sym} 1030 -450 2 1 {name=p7 lab=s2_an[1]
}
C {devices/ipin.sym} 610 -380 0 0 {name=p8 lab=dig_in[10]
}
C {devices/ipin.sym} 610 -360 0 0 {name=p9 lab=dig_in[2:9]
}
C {devices/ipin.sym} 610 -340 0 0 {name=p10 lab=dig_in[0:1]
}
C {devices/titleblock.sym} 1570 0 0 0 {name=l21 author="Christoph Weiser" license="Apache-2.0" year="2026"}
