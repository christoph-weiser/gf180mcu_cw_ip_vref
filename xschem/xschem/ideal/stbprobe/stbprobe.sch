v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 0 -0 1180 0 1180 -530 -0 -530 0 -0 {}
P 4 5 900 -80 900 -530 1180 -530 1180 -80 900 -80 {}
N 440 -330 520 -330 {
lab=probe}
N 440 -330 440 -300 {
lab=probe}
N 340 -330 440 -330 {
lab=probe}
N 250 -330 280 -330 {
lab=B}
N 580 -330 610 -330 {
lab=A}
N 440 -240 440 -220 {
lab=REF}
C {devices/titleblock.sym} 900 0 0 0 {}
C {devices/iopin.sym} 610 -330 2 1 {name=p2 lab=A
}
C {devices/iopin.sym} 250 -330 2 0 {name=p1 lab=B
}
C {devices/iopin.sym} 440 -220 3 1 {name=p3 lab=REF
}
C {devices/vsource.sym} 550 -330 3 0 {name=Vprobe1 value=0
}
C {devices/isource.sym} 440 -270 2 0 {name=Iprobe1 value=0
}
C {devices/vsource.sym} 310 -330 1 0 {name=Vprobe2 value=0
}
C {devices/lab_wire.sym} 440 -330 0 1 {name=l12 sig_type=std_logic lab=probe
}
C {devices/code.sym} 990 -320 0 0 {name=AC_VARIABLE 
only_toplevel=false
spice_ignore="tcleval([set ::ac_simulation true])"
value=""}
