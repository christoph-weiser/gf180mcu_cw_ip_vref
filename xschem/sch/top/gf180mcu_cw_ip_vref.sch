v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 190 -150 190 -1100 1920 -1100 1920 -150 190 -150 {}
P 4 5 0 0 0 -1250 2410 -1250 2410 0 0 0 {}
P 4 5 2130 -310 2130 -780 2410 -780 2410 -310 2130 -310 {}
P 4 5 2130 -80 2130 -310 2410 -310 2410 -80 2130 -80 {}
P 4 5 2130 -780 2130 -1250 2410 -1250 2410 -780 2130 -780 {}
T {User Area} 1810 -1130 0 0 0.4 0.4 {
}
N 190 -260 1420 -260 {
lab=VGND}
N 1420 -680 1420 -260 {
lab=VGND}
N 780 -970 1420 -970 {
lab=VAPWR}
N 1420 -970 1420 -760 {
lab=VAPWR}
N 1040 -740 1060 -740 {
lab=vext}
N 480 -1100 480 -970 {
lab=VAPWR}
N 480 -970 780 -970 {
lab=VAPWR}
N 310 -1100 310 -690 {
lab=VDPWR}
N 480 -970 480 -690 {
lab=VAPWR}
N 310 -690 380 -690 {
lab=VDPWR}
N 380 -690 380 -670 {
lab=VDPWR}
N 420 -690 420 -670 {
lab=VAPWR}
N 420 -690 480 -690 {
lab=VAPWR}
N 1420 -970 1590 -970 {
lab=VAPWR}
N 1420 -260 1590 -260 {
lab=VGND}
N 1280 -720 1350 -720 {
lab=vsw}
N 1200 -630 1200 -260 {
lab=VGND}
N 1200 -650 1200 -630 {
lab=VGND}
N 1060 -740 1120 -740 {
lab=vext}
N 1470 -720 1610 -720 {
lab=vbuf}
N 1690 -970 1690 -770 {
lab=VAPWR}
N 1590 -970 1690 -970 {
lab=VAPWR}
N 1690 -630 1690 -260 {
lab=VGND}
N 1590 -260 1690 -260 {
lab=VGND}
N 1770 -700 1920 -700 {
lab=vout}
N 1200 -970 1200 -790 {
lab=VAPWR}
N 1040 -700 1120 -700 {
lab=vbg}
N 190 -740 940 -740 {
lab=vext}
N 940 -740 950 -740 {
lab=vext}
N 950 -740 1010 -740 {
lab=vext}
N 1010 -740 1040 -740 {
lab=vext}
N 190 -840 1400 -840 {
lab=bias}
N 1400 -840 1400 -770 {
lab=bias}
N 310 -690 310 -550 {
lab=VDPWR}
N 310 -550 380 -550 {
lab=VDPWR}
N 380 -550 380 -530 {
lab=VDPWR}
N 420 -550 420 -530 {
lab=VAPWR}
N 420 -550 480 -550 {
lab=VAPWR}
N 480 -690 480 -550 {
lab=VAPWR}
N 460 -630 580 -630 {
lab=trim_ls[7:0]}
N 190 -490 340 -490 {
lab=dsw[1:0]}
N 1040 -700 1040 -570 {
lab=vbg}
N 1010 -570 1040 -570 {
lab=vbg}
N 1010 -540 1570 -540 {
lab=iout}
N 1570 -680 1570 -540 {
lab=iout}
N 1570 -680 1610 -680 {
lab=iout}
N 790 -590 860 -590 {
lab=VAPWR}
N 790 -970 790 -590 {
lab=VAPWR}
N 790 -500 860 -500 {
lab=VGND}
N 790 -500 790 -260 {
lab=VGND}
N 230 -630 340 -630 {
lab=trim[7:0]}
N 190 -630 230 -630 {
lab=trim[7:0]}
N 310 -410 380 -410 {
lab=VDPWR}
N 380 -410 380 -390 {
lab=VDPWR}
N 420 -410 420 -390 {
lab=VAPWR}
N 420 -410 480 -410 {
lab=VAPWR}
N 310 -550 310 -410 {
lab=VDPWR}
N 480 -550 480 -410 {
lab=VAPWR}
N 190 -350 340 -350 {
lab=en}
N 460 -490 580 -490 {
lab=dsw_ls[1:0]}
N 460 -350 580 -350 {
lab=en_ls}
N 260 -450 260 -260 {
lab=VGND}
N 260 -450 400 -450 {
lab=VGND}
N 260 -580 260 -450 {
lab=VGND}
N 260 -590 260 -580 {
lab=VGND}
N 260 -590 400 -590 {
lab=VGND}
N 400 -310 400 -260 {
lab=VGND}
C {devices/iopin.sym} 190 -260 2 0 {name=p1 lab=VGND
}
C {devices/iopin.sym} 310 -1100 3 0 {name=p33 lab=VDPWR
}
C {devices/iopin.sym} 480 -1100 1 1 {name=p2 lab=VAPWR
}
C {devices/iopin.sym} 190 -840 0 1 {name=p3 lab=bias
}
C {devices/ipin.sym} 190 -630 0 0 {name=p5 lab=trim[7:0]
}
C {devices/ipin.sym} 190 -490 0 0 {name=p7 lab=dsw[1:0]
}
C {sch/testbuffer/testbuffer/testbuffer.sym} 1500 -720 0 0 {name=xtb
}
C {devices/iopin.sym} 1920 -700 0 0 {name=p4 lab=vout
}
C {devices/iopin.sym} 190 -740 2 0 {name=p10 lab=vext
}
C {sch/spdt/spdt/spdt.sym} 1120 -650 0 0 {name=xsw1
}
C {sch/spdt/spdt/spdt.sym} 1610 -630 0 0 {name=xsw2
}
C {devices/titleblock.sym} 2130 0 0 0 {name=l21 author="Christoph Weiser" license="Apache-2.0" year="2026" }
C {devices/notes.sym} 2220 -150 0 0 {name=h25
descr=bla
tclcommand="execute 0 sh -c \\"$\{editor\} [file dirname [xschem get schname]]/doc/notes.md\\""
}
C {sch/levelshifter/levelshifter/levelshifter.sym} 340 -590 0 0 {name=xlvl1[7:0]
}
C {devices/lab_wire.sym} 580 -630 0 0 {name=l2 sig_type=std_logic lab=trim_ls[7:0]
}
C {devices/lab_wire.sym} 1610 -720 0 0 {name=l9 sig_type=std_logic lab=vbuf
}
C {devices/lab_wire.sym} 1350 -720 0 0 {name=l10 sig_type=std_logic lab=vsw
}
C {devices/lab_wire.sym} 1120 -720 0 0 {name=l3 sig_type=std_logic lab=dsw_ls[0]
}
C {devices/lab_wire.sym} 1610 -700 0 0 {name=l4 sig_type=std_logic lab=dsw_ls[1]
}
C {sch/levelshifter/levelshifter/levelshifter.sym} 340 -450 0 0 {name=xlvl2[2:0]
}
C {devices/lab_wire.sym} 580 -490 0 0 {name=l5 sig_type=std_logic lab=dsw_ls[1:0]
}
C {devices/lab_wire.sym} 1120 -700 0 0 {name=l11 sig_type=std_logic lab=vbg
}
C {sch/bandgap_cm/bandgap/bandgap.sym} 880 -490 0 0 {name=xbg
}
C {devices/lab_wire.sym} 1610 -680 0 0 {name=l12 sig_type=std_logic lab=iout
}
C {devices/lab_wire.sym} 860 -550 0 0 {name=l14 sig_type=std_logic lab=trim_ls[7:0]
}
C {devices/lab_wire.sym} 860 -530 0 0 {name=l15 sig_type=std_logic lab=en_ls
}
C {sch/levelshifter/levelshifter/levelshifter.sym} 340 -310 0 0 {name=xlvl3
}
C {devices/lab_wire.sym} 580 -350 0 0 {name=l1 sig_type=std_logic lab=en_ls
}
C {devices/ipin.sym} 190 -350 0 0 {name=p6 lab=en
}
