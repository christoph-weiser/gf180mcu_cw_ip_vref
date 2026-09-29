v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 760 -80 760 -280 1040 -280 1040 -80 760 -80 {}
P 4 5 760 -280 760 -520 1040 -520 1040 -280 760 -280 {}
P 4 5 760 -0 0 0 0 -520 760 -520 760 -0 {}
N 180 -260 180 -220 { lab=vss}
N 390 -280 420 -280 { lab=vdd}
N 390 -190 420 -190 { lab=vss}
N 570 -260 620 -260 {
lab=vbg}
N 180 -350 180 -320 {
lab=vdd}
N 570 -230 610 -230 {
lab=#net1}
N 610 -230 610 -200 {
lab=#net1}
C {sch/bandgap_cm/bandgap/bandgap.sym} 440 -180 0 0 {name=xbg
schematic=sch/bandgap_cm/bandgap/bandgap.sch}
C {devices/vsource.sym} 180 -290 0 0 {name=vdd value='vdd'
}
C {devices/vsource.sym} 180 -200 0 0 {name=vss value=0
}
C {devices/gnd.sym} 180 -170 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 570 -260 0 1 {name=l5 sig_type=std_logic lab=vbg}
C {devices/lab_wire.sym} 180 -320 3 1 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 610 -140 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/code.sym} 910 -220 0 0 {name=NGSPICE
only_toplevel=true
value="* Control

.param vdd = 3.3

.temp = 27

.options reltol  = 1e-6
.options abstol  = 1e-12
.options gmin    = 1e-15

*------------------------------------------------------------
* Nodeset for better convergence
*------------------------------------------------------------
.nodeset v(vbg)  = '1'
.nodeset v(xbg.gate) = 'vdd/2'
.nodeset v(xbg.vx)   = '0.70'
.nodeset v(xbg.vbe2) = '0.65'
.nodeset v(xbg.vs1)  = '0'
*------------------------------------------------------------


.control

save all

* optran 0 0 0 100n 0.3m 0
op 

let gm_xbg_xm2 = @m.xbg.xm2.m0[gm]
let gm_xbg_xms1 = @m.xbg.xms1.m0[gm]
let gm_xbg_xm1 = @m.xbg.xm1.m0[gm]
let gm_xbg_xmo1 = @m.xbg.xmo1.m0[gm]
let gm_xbg_xmb1 = @m.xbg.xmb1.m0[gm]
let gm_xbg_xmb2 = @m.xbg.xmb2.m0[gm]
let gm_xbg_xmb3 = @m.xbg.xmb3.m0[gm]
let gm_xbg_xmb2 = @m.xbg.xmb2.m0[gm]
let gm_xbg_xmb3 = @m.xbg.xmb3.m0[gm]
let gm_xbg_xmo2 = @m.xbg.xmo2.m0[gm]
let gm_xbg_xme1 = @m.xbg.xme1.m0[gm]
let gm_xbg_xme2 = @m.xbg.xme2.m0[gm]
let gm_xbg_xmi2 = @m.xbg.xmi2.m0[gm]
let gm_xbg_xmi1 = @m.xbg.xmi1.m0[gm]
let gm_xbg_xme3 = @m.xbg.xme3.m0[gm]
let gm_xbg_xme4 = @m.xbg.xme4.m0[gm]
let gm_xbg_xms2 = @m.xbg.xms2.m0[gm]
let gm_xbg_xms3 = @m.xbg.xms3.m0[gm]
let gm_xbg_xms4 = @m.xbg.xms4.m0[gm]
let gm_xamp_xmb1 = @m.xbg.xamp.xmb1.m0[gm]
let gm_xamp_xmb3 = @m.xbg.xamp.xmb3.m0[gm]
let gm_xamp_xmb2 = @m.xbg.xamp.xmb2.m0[gm]
let gm_xamp_xmd1 = @m.xbg.xamp.xmd1.m0[gm]
let gm_xamp_xmb4 = @m.xbg.xamp.xmb4.m0[gm]
let gm_xamp_xmb5 = @m.xbg.xamp.xmb5.m0[gm]
let gm_xamp_xmd2 = @m.xbg.xamp.xmd2.m0[gm]
let gm_xamp_xmt1 = @m.xbg.xamp.xmt1.m0[gm]
let gm_xamp_xmc7 = @m.xbg.xamp.xmc7.m0[gm]
let gm_xamp_xmc8 = @m.xbg.xamp.xmc8.m0[gm]
let gm_xamp_xmc1 = @m.xbg.xamp.xmc1.m0[gm]
let gm_xamp_xmc2 = @m.xbg.xamp.xmc2.m0[gm]
let gm_xamp_xmc3 = @m.xbg.xamp.xmc3.m0[gm]
let gm_xamp_xmc4 = @m.xbg.xamp.xmc4.m0[gm]
let gm_xamp_xmc5 = @m.xbg.xamp.xmc5.m0[gm]
let gm_xamp_xmc6 = @m.xbg.xamp.xmc6.m0[gm]
let gds_xbg_xm2 = @m.xbg.xm2.m0[gds]
let gds_xbg_xms1 = @m.xbg.xms1.m0[gds]
let gds_xbg_xm1 = @m.xbg.xm1.m0[gds]
let gds_xbg_xmo1 = @m.xbg.xmo1.m0[gds]
let gds_xbg_xmb1 = @m.xbg.xmb1.m0[gds]
let gds_xbg_xmb2 = @m.xbg.xmb2.m0[gds]
let gds_xbg_xmb3 = @m.xbg.xmb3.m0[gds]
let gds_xbg_xmb2 = @m.xbg.xmb2.m0[gds]
let gds_xbg_xmb3 = @m.xbg.xmb3.m0[gds]
let gds_xbg_xmo2 = @m.xbg.xmo2.m0[gds]
let gds_xbg_xme1 = @m.xbg.xme1.m0[gds]
let gds_xbg_xme2 = @m.xbg.xme2.m0[gds]
let gds_xbg_xmi2 = @m.xbg.xmi2.m0[gds]
let gds_xbg_xmi1 = @m.xbg.xmi1.m0[gds]
let gds_xbg_xme3 = @m.xbg.xme3.m0[gds]
let gds_xbg_xme4 = @m.xbg.xme4.m0[gds]
let gds_xbg_xms2 = @m.xbg.xms2.m0[gds]
let gds_xbg_xms3 = @m.xbg.xms3.m0[gds]
let gds_xbg_xms4 = @m.xbg.xms4.m0[gds]
let gds_xamp_xmb1 = @m.xbg.xamp.xmb1.m0[gds]
let gds_xamp_xmb3 = @m.xbg.xamp.xmb3.m0[gds]
let gds_xamp_xmb2 = @m.xbg.xamp.xmb2.m0[gds]
let gds_xamp_xmd1 = @m.xbg.xamp.xmd1.m0[gds]
let gds_xamp_xmb4 = @m.xbg.xamp.xmb4.m0[gds]
let gds_xamp_xmb5 = @m.xbg.xamp.xmb5.m0[gds]
let gds_xamp_xmd2 = @m.xbg.xamp.xmd2.m0[gds]
let gds_xamp_xmt1 = @m.xbg.xamp.xmt1.m0[gds]
let gds_xamp_xmc7 = @m.xbg.xamp.xmc7.m0[gds]
let gds_xamp_xmc8 = @m.xbg.xamp.xmc8.m0[gds]
let gds_xamp_xmc1 = @m.xbg.xamp.xmc1.m0[gds]
let gds_xamp_xmc2 = @m.xbg.xamp.xmc2.m0[gds]
let gds_xamp_xmc3 = @m.xbg.xamp.xmc3.m0[gds]
let gds_xamp_xmc4 = @m.xbg.xamp.xmc4.m0[gds]
let gds_xamp_xmc5 = @m.xbg.xamp.xmc5.m0[gds]
let gds_xamp_xmc6 = @m.xbg.xamp.xmc6.m0[gds]
let vdsat_xbg_xm2 = @m.xbg.xm2.m0[vdsat]
let vdsat_xbg_xms1 = @m.xbg.xms1.m0[vdsat]
let vdsat_xbg_xm1 = @m.xbg.xm1.m0[vdsat]
let vdsat_xbg_xmo1 = @m.xbg.xmo1.m0[vdsat]
let vdsat_xbg_xmb1 = @m.xbg.xmb1.m0[vdsat]
let vdsat_xbg_xmb2 = @m.xbg.xmb2.m0[vdsat]
let vdsat_xbg_xmb3 = @m.xbg.xmb3.m0[vdsat]
let vdsat_xbg_xmb2 = @m.xbg.xmb2.m0[vdsat]
let vdsat_xbg_xmb3 = @m.xbg.xmb3.m0[vdsat]
let vdsat_xbg_xmo2 = @m.xbg.xmo2.m0[vdsat]
let vdsat_xbg_xme1 = @m.xbg.xme1.m0[vdsat]
let vdsat_xbg_xme2 = @m.xbg.xme2.m0[vdsat]
let vdsat_xbg_xmi2 = @m.xbg.xmi2.m0[vdsat]
let vdsat_xbg_xmi1 = @m.xbg.xmi1.m0[vdsat]
let vdsat_xbg_xme3 = @m.xbg.xme3.m0[vdsat]
let vdsat_xbg_xme4 = @m.xbg.xme4.m0[vdsat]
let vdsat_xbg_xms2 = @m.xbg.xms2.m0[vdsat]
let vdsat_xbg_xms3 = @m.xbg.xms3.m0[vdsat]
let vdsat_xbg_xms4 = @m.xbg.xms4.m0[vdsat]
let vdsat_xamp_xmb1 = @m.xbg.xamp.xmb1.m0[vdsat]
let vdsat_xamp_xmb3 = @m.xbg.xamp.xmb3.m0[vdsat]
let vdsat_xamp_xmb2 = @m.xbg.xamp.xmb2.m0[vdsat]
let vdsat_xamp_xmd1 = @m.xbg.xamp.xmd1.m0[vdsat]
let vdsat_xamp_xmb4 = @m.xbg.xamp.xmb4.m0[vdsat]
let vdsat_xamp_xmb5 = @m.xbg.xamp.xmb5.m0[vdsat]
let vdsat_xamp_xmd2 = @m.xbg.xamp.xmd2.m0[vdsat]
let vdsat_xamp_xmt1 = @m.xbg.xamp.xmt1.m0[vdsat]
let vdsat_xamp_xmc7 = @m.xbg.xamp.xmc7.m0[vdsat]
let vdsat_xamp_xmc8 = @m.xbg.xamp.xmc8.m0[vdsat]
let vdsat_xamp_xmc1 = @m.xbg.xamp.xmc1.m0[vdsat]
let vdsat_xamp_xmc2 = @m.xbg.xamp.xmc2.m0[vdsat]
let vdsat_xamp_xmc3 = @m.xbg.xamp.xmc3.m0[vdsat]
let vdsat_xamp_xmc4 = @m.xbg.xamp.xmc4.m0[vdsat]
let vdsat_xamp_xmc5 = @m.xbg.xamp.xmc5.m0[vdsat]
let vdsat_xamp_xmc6 = @m.xbg.xamp.xmc6.m0[vdsat]
let vth_xbg_xm2 = @m.xbg.xm2.m0[vth]
let vth_xbg_xms1 = @m.xbg.xms1.m0[vth]
let vth_xbg_xm1 = @m.xbg.xm1.m0[vth]
let vth_xbg_xmo1 = @m.xbg.xmo1.m0[vth]
let vth_xbg_xmb1 = @m.xbg.xmb1.m0[vth]
let vth_xbg_xmb2 = @m.xbg.xmb2.m0[vth]
let vth_xbg_xmb3 = @m.xbg.xmb3.m0[vth]
let vth_xbg_xmb2 = @m.xbg.xmb2.m0[vth]
let vth_xbg_xmb3 = @m.xbg.xmb3.m0[vth]
let vth_xbg_xmo2 = @m.xbg.xmo2.m0[vth]
let vth_xbg_xme1 = @m.xbg.xme1.m0[vth]
let vth_xbg_xme2 = @m.xbg.xme2.m0[vth]
let vth_xbg_xmi2 = @m.xbg.xmi2.m0[vth]
let vth_xbg_xmi1 = @m.xbg.xmi1.m0[vth]
let vth_xbg_xme3 = @m.xbg.xme3.m0[vth]
let vth_xbg_xme4 = @m.xbg.xme4.m0[vth]
let vth_xbg_xms2 = @m.xbg.xms2.m0[vth]
let vth_xbg_xms3 = @m.xbg.xms3.m0[vth]
let vth_xbg_xms4 = @m.xbg.xms4.m0[vth]
let vth_xamp_xmb1 = @m.xbg.xamp.xmb1.m0[vth]
let vth_xamp_xmb3 = @m.xbg.xamp.xmb3.m0[vth]
let vth_xamp_xmb2 = @m.xbg.xamp.xmb2.m0[vth]
let vth_xamp_xmd1 = @m.xbg.xamp.xmd1.m0[vth]
let vth_xamp_xmb4 = @m.xbg.xamp.xmb4.m0[vth]
let vth_xamp_xmb5 = @m.xbg.xamp.xmb5.m0[vth]
let vth_xamp_xmd2 = @m.xbg.xamp.xmd2.m0[vth]
let vth_xamp_xmt1 = @m.xbg.xamp.xmt1.m0[vth]
let vth_xamp_xmc7 = @m.xbg.xamp.xmc7.m0[vth]
let vth_xamp_xmc8 = @m.xbg.xamp.xmc8.m0[vth]
let vth_xamp_xmc1 = @m.xbg.xamp.xmc1.m0[vth]
let vth_xamp_xmc2 = @m.xbg.xamp.xmc2.m0[vth]
let vth_xamp_xmc3 = @m.xbg.xamp.xmc3.m0[vth]
let vth_xamp_xmc4 = @m.xbg.xamp.xmc4.m0[vth]
let vth_xamp_xmc5 = @m.xbg.xamp.xmc5.m0[vth]
let vth_xamp_xmc6 = @m.xbg.xamp.xmc6.m0[vth]
let id_xbg_xm2 = @m.xbg.xm2.m0[id]
let id_xbg_xms1 = @m.xbg.xms1.m0[id]
let id_xbg_xm1 = @m.xbg.xm1.m0[id]
let id_xbg_xmo1 = @m.xbg.xmo1.m0[id]
let id_xbg_xmb1 = @m.xbg.xmb1.m0[id]
let id_xbg_xmb2 = @m.xbg.xmb2.m0[id]
let id_xbg_xmb3 = @m.xbg.xmb3.m0[id]
let id_xbg_xmb2 = @m.xbg.xmb2.m0[id]
let id_xbg_xmb3 = @m.xbg.xmb3.m0[id]
let id_xbg_xmo2 = @m.xbg.xmo2.m0[id]
let id_xbg_xme1 = @m.xbg.xme1.m0[id]
let id_xbg_xme2 = @m.xbg.xme2.m0[id]
let id_xbg_xmi2 = @m.xbg.xmi2.m0[id]
let id_xbg_xmi1 = @m.xbg.xmi1.m0[id]
let id_xbg_xme3 = @m.xbg.xme3.m0[id]
let id_xbg_xme4 = @m.xbg.xme4.m0[id]
let id_xbg_xms2 = @m.xbg.xms2.m0[id]
let id_xbg_xms3 = @m.xbg.xms3.m0[id]
let id_xbg_xms4 = @m.xbg.xms4.m0[id]
let id_xamp_xmb1 = @m.xbg.xamp.xmb1.m0[id]
let id_xamp_xmb3 = @m.xbg.xamp.xmb3.m0[id]
let id_xamp_xmb2 = @m.xbg.xamp.xmb2.m0[id]
let id_xamp_xmd1 = @m.xbg.xamp.xmd1.m0[id]
let id_xamp_xmb4 = @m.xbg.xamp.xmb4.m0[id]
let id_xamp_xmb5 = @m.xbg.xamp.xmb5.m0[id]
let id_xamp_xmd2 = @m.xbg.xamp.xmd2.m0[id]
let id_xamp_xmt1 = @m.xbg.xamp.xmt1.m0[id]
let id_xamp_xmc7 = @m.xbg.xamp.xmc7.m0[id]
let id_xamp_xmc8 = @m.xbg.xamp.xmc8.m0[id]
let id_xamp_xmc1 = @m.xbg.xamp.xmc1.m0[id]
let id_xamp_xmc2 = @m.xbg.xamp.xmc2.m0[id]
let id_xamp_xmc3 = @m.xbg.xamp.xmc3.m0[id]
let id_xamp_xmc4 = @m.xbg.xamp.xmc4.m0[id]
let id_xamp_xmc5 = @m.xbg.xamp.xmc5.m0[id]
let id_xamp_xmc6 = @m.xbg.xamp.xmc6.m0[id]
let vgs_xbg_xm2 = @m.xbg.xm2.m0[vgs]
let vgs_xbg_xms1 = @m.xbg.xms1.m0[vgs]
let vgs_xbg_xm1 = @m.xbg.xm1.m0[vgs]
let vgs_xbg_xmo1 = @m.xbg.xmo1.m0[vgs]
let vgs_xbg_xmb1 = @m.xbg.xmb1.m0[vgs]
let vgs_xbg_xmb2 = @m.xbg.xmb2.m0[vgs]
let vgs_xbg_xmb3 = @m.xbg.xmb3.m0[vgs]
let vgs_xbg_xmb2 = @m.xbg.xmb2.m0[vgs]
let vgs_xbg_xmb3 = @m.xbg.xmb3.m0[vgs]
let vgs_xbg_xmo2 = @m.xbg.xmo2.m0[vgs]
let vgs_xbg_xme1 = @m.xbg.xme1.m0[vgs]
let vgs_xbg_xme2 = @m.xbg.xme2.m0[vgs]
let vgs_xbg_xmi2 = @m.xbg.xmi2.m0[vgs]
let vgs_xbg_xmi1 = @m.xbg.xmi1.m0[vgs]
let vgs_xbg_xme3 = @m.xbg.xme3.m0[vgs]
let vgs_xbg_xme4 = @m.xbg.xme4.m0[vgs]
let vgs_xbg_xms2 = @m.xbg.xms2.m0[vgs]
let vgs_xbg_xms3 = @m.xbg.xms3.m0[vgs]
let vgs_xbg_xms4 = @m.xbg.xms4.m0[vgs]
let vgs_xamp_xmb1 = @m.xbg.xamp.xmb1.m0[vgs]
let vgs_xamp_xmb3 = @m.xbg.xamp.xmb3.m0[vgs]
let vgs_xamp_xmb2 = @m.xbg.xamp.xmb2.m0[vgs]
let vgs_xamp_xmd1 = @m.xbg.xamp.xmd1.m0[vgs]
let vgs_xamp_xmb4 = @m.xbg.xamp.xmb4.m0[vgs]
let vgs_xamp_xmb5 = @m.xbg.xamp.xmb5.m0[vgs]
let vgs_xamp_xmd2 = @m.xbg.xamp.xmd2.m0[vgs]
let vgs_xamp_xmt1 = @m.xbg.xamp.xmt1.m0[vgs]
let vgs_xamp_xmc7 = @m.xbg.xamp.xmc7.m0[vgs]
let vgs_xamp_xmc8 = @m.xbg.xamp.xmc8.m0[vgs]
let vgs_xamp_xmc1 = @m.xbg.xamp.xmc1.m0[vgs]
let vgs_xamp_xmc2 = @m.xbg.xamp.xmc2.m0[vgs]
let vgs_xamp_xmc3 = @m.xbg.xamp.xmc3.m0[vgs]
let vgs_xamp_xmc4 = @m.xbg.xamp.xmc4.m0[vgs]
let vgs_xamp_xmc5 = @m.xbg.xamp.xmc5.m0[vgs]
let vgs_xamp_xmc6 = @m.xbg.xamp.xmc6.m0[vgs]
let vds_xbg_xm2 = @m.xbg.xm2.m0[vds]
let vds_xbg_xms1 = @m.xbg.xms1.m0[vds]
let vds_xbg_xm1 = @m.xbg.xm1.m0[vds]
let vds_xbg_xmo1 = @m.xbg.xmo1.m0[vds]
let vds_xbg_xmb1 = @m.xbg.xmb1.m0[vds]
let vds_xbg_xmb2 = @m.xbg.xmb2.m0[vds]
let vds_xbg_xmb3 = @m.xbg.xmb3.m0[vds]
let vds_xbg_xmb2 = @m.xbg.xmb2.m0[vds]
let vds_xbg_xmb3 = @m.xbg.xmb3.m0[vds]
let vds_xbg_xmo2 = @m.xbg.xmo2.m0[vds]
let vds_xbg_xme1 = @m.xbg.xme1.m0[vds]
let vds_xbg_xme2 = @m.xbg.xme2.m0[vds]
let vds_xbg_xmi2 = @m.xbg.xmi2.m0[vds]
let vds_xbg_xmi1 = @m.xbg.xmi1.m0[vds]
let vds_xbg_xme3 = @m.xbg.xme3.m0[vds]
let vds_xbg_xme4 = @m.xbg.xme4.m0[vds]
let vds_xbg_xms2 = @m.xbg.xms2.m0[vds]
let vds_xbg_xms3 = @m.xbg.xms3.m0[vds]
let vds_xbg_xms4 = @m.xbg.xms4.m0[vds]
let vds_xamp_xmb1 = @m.xbg.xamp.xmb1.m0[vds]
let vds_xamp_xmb3 = @m.xbg.xamp.xmb3.m0[vds]
let vds_xamp_xmb2 = @m.xbg.xamp.xmb2.m0[vds]
let vds_xamp_xmd1 = @m.xbg.xamp.xmd1.m0[vds]
let vds_xamp_xmb4 = @m.xbg.xamp.xmb4.m0[vds]
let vds_xamp_xmb5 = @m.xbg.xamp.xmb5.m0[vds]
let vds_xamp_xmd2 = @m.xbg.xamp.xmd2.m0[vds]
let vds_xamp_xmt1 = @m.xbg.xamp.xmt1.m0[vds]
let vds_xamp_xmc7 = @m.xbg.xamp.xmc7.m0[vds]
let vds_xamp_xmc8 = @m.xbg.xamp.xmc8.m0[vds]
let vds_xamp_xmc1 = @m.xbg.xamp.xmc1.m0[vds]
let vds_xamp_xmc2 = @m.xbg.xamp.xmc2.m0[vds]
let vds_xamp_xmc3 = @m.xbg.xamp.xmc3.m0[vds]
let vds_xamp_xmc4 = @m.xbg.xamp.xmc4.m0[vds]
let vds_xamp_xmc5 = @m.xbg.xamp.xmc5.m0[vds]
let vds_xamp_xmc6 = @m.xbg.xamp.xmc6.m0[vds]

let vsat_xbg_xm2  = vds_xbg_xm2  - vdsat_xbg_xm2
let vsat_xbg_xms1 = vds_xbg_xms1 - vdsat_xbg_xms1
let vsat_xbg_xm1  = vds_xbg_xm1  - vdsat_xbg_xm1
let vsat_xbg_xmo1 = vds_xbg_xmo1 - vdsat_xbg_xmo1
let vsat_xbg_xmb1 = vds_xbg_xmb1 - vdsat_xbg_xmb1
let vsat_xbg_xmb2 = vds_xbg_xmb2 - vdsat_xbg_xmb2
let vsat_xbg_xmb3 = vds_xbg_xmb3 - vdsat_xbg_xmb3
let vsat_xbg_xmb2 = vds_xbg_xmb2 - vdsat_xbg_xmb2
let vsat_xbg_xmb3 = vds_xbg_xmb3 - vdsat_xbg_xmb3
let vsat_xbg_xmo2 = vds_xbg_xmo2 - vdsat_xbg_xmo2
let vsat_xbg_xme1 = vds_xbg_xme1 - vdsat_xbg_xme1
let vsat_xbg_xme2 = vds_xbg_xme2 - vdsat_xbg_xme2
let vsat_xbg_xmi2 = vds_xbg_xmi2 - vdsat_xbg_xmi2
let vsat_xbg_xmi1 = vds_xbg_xmi1 - vdsat_xbg_xmi1
let vsat_xbg_xme3 = vds_xbg_xme3 - vdsat_xbg_xme3
let vsat_xbg_xme4 = vds_xbg_xme4 - vdsat_xbg_xme4
let vsat_xbg_xms2 = vds_xbg_xms2 - vdsat_xbg_xms2
let vsat_xbg_xms3 = vds_xbg_xms3 - vdsat_xbg_xms3
let vsat_xbg_xms4 = vds_xbg_xms4 - vdsat_xbg_xms4
let vsat_xamp_xmb1 = vds_xamp_xmb1 - vdsat_xamp_xmb1
let vsat_xamp_xmb3 = vds_xamp_xmb3 - vdsat_xamp_xmb3
let vsat_xamp_xmb2 = vds_xamp_xmb2 - vdsat_xamp_xmb2
let vsat_xamp_xmd1 = vds_xamp_xmd1 - vdsat_xamp_xmd1
let vsat_xamp_xmb4 = vds_xamp_xmb4 - vdsat_xamp_xmb4
let vsat_xamp_xmb5 = vds_xamp_xmb5 - vdsat_xamp_xmb5
let vsat_xamp_xmd2 = vds_xamp_xmd2 - vdsat_xamp_xmd2
let vsat_xamp_xmt1 = vds_xamp_xmt1 - vdsat_xamp_xmt1
let vsat_xamp_xmc7 = vds_xamp_xmc7 - vdsat_xamp_xmc7
let vsat_xamp_xmc8 = vds_xamp_xmc8 - vdsat_xamp_xmc8
let vsat_xamp_xmc1 = vds_xamp_xmc1 - vdsat_xamp_xmc1
let vsat_xamp_xmc2 = vds_xamp_xmc2 - vdsat_xamp_xmc2
let vsat_xamp_xmc3 = vds_xamp_xmc3 - vdsat_xamp_xmc3
let vsat_xamp_xmc4 = vds_xamp_xmc4 - vdsat_xamp_xmc4
let vsat_xamp_xmc5 = vds_xamp_xmc5 - vdsat_xamp_xmc5
let vsat_xamp_xmc6 = vds_xamp_xmc6 - vdsat_xamp_xmc6

let vov_xbg_xm2  = vgs_xbg_xm2  - vth_xbg_xm2
let vov_xbg_xms1 = vgs_xbg_xms1 - vth_xbg_xms1
let vov_xbg_xm1  = vgs_xbg_xm1  - vth_xbg_xm1
let vov_xbg_xmo1 = vgs_xbg_xmo1 - vth_xbg_xmo1
let vov_xbg_xmb1 = vgs_xbg_xmb1 - vth_xbg_xmb1
let vov_xbg_xmb2 = vgs_xbg_xmb2 - vth_xbg_xmb2
let vov_xbg_xmb3 = vgs_xbg_xmb3 - vth_xbg_xmb3
let vov_xbg_xmb2 = vgs_xbg_xmb2 - vth_xbg_xmb2
let vov_xbg_xmb3 = vgs_xbg_xmb3 - vth_xbg_xmb3
let vov_xbg_xmo2 = vgs_xbg_xmo2 - vth_xbg_xmo2
let vov_xbg_xme1 = vgs_xbg_xme1 - vth_xbg_xme1
let vov_xbg_xme2 = vgs_xbg_xme2 - vth_xbg_xme2
let vov_xbg_xmi2 = vgs_xbg_xmi2 - vth_xbg_xmi2
let vov_xbg_xmi1 = vgs_xbg_xmi1 - vth_xbg_xmi1
let vov_xbg_xme3 = vgs_xbg_xme3 - vth_xbg_xme3
let vov_xbg_xme4 = vgs_xbg_xme4 - vth_xbg_xme4
let vov_xbg_xms2 = vgs_xbg_xms2 - vth_xbg_xms2
let vov_xbg_xms3 = vgs_xbg_xms3 - vth_xbg_xms3
let vov_xbg_xms4 = vgs_xbg_xms4 - vth_xbg_xms4
let vov_xamp_xmb1 = vgs_xamp_xmb1 - vth_xamp_xmb1
let vov_xamp_xmb3 = vgs_xamp_xmb3 - vth_xamp_xmb3
let vov_xamp_xmb2 = vgs_xamp_xmb2 - vth_xamp_xmb2
let vov_xamp_xmd1 = vgs_xamp_xmd1 - vth_xamp_xmd1
let vov_xamp_xmb4 = vgs_xamp_xmb4 - vth_xamp_xmb4
let vov_xamp_xmb5 = vgs_xamp_xmb5 - vth_xamp_xmb5
let vov_xamp_xmd2 = vgs_xamp_xmd2 - vth_xamp_xmd2
let vov_xamp_xmt1 = vgs_xamp_xmt1 - vth_xamp_xmt1
let vov_xamp_xmc7 = vgs_xamp_xmc7 - vth_xamp_xmc7
let vov_xamp_xmc8 = vgs_xamp_xmc8 - vth_xamp_xmc8
let vov_xamp_xmc1 = vgs_xamp_xmc1 - vth_xamp_xmc1
let vov_xamp_xmc2 = vgs_xamp_xmc2 - vth_xamp_xmc2
let vov_xamp_xmc3 = vgs_xamp_xmc3 - vth_xamp_xmc3
let vov_xamp_xmc4 = vgs_xamp_xmc4 - vth_xamp_xmc4
let vov_xamp_xmc5 = vgs_xamp_xmc5 - vth_xamp_xmc5
let vov_xamp_xmc6 = vgs_xamp_xmc6 - vth_xamp_xmc6



let ie_xq1 = abs(v.xbg.vmbjt1#branch)
let ie_xq2 = abs(v.xbg.vmbjt2#branch)
let i_amp = abs(v.xbg.vmamp#branch)
let i_xm1 = abs(v.xbg.vmxm1#branch)
let i_xm2 = abs(v.xbg.vmxm2#branch)
let i_r1 = ie_xq2
let i_r3 = abs(v.xbg.vmr3#branch)
let i_r2 = abs(v.xbg.vmr2#branch)
let iout = abs(vm#branch)

print vbg
print iout

write op_bandgap.raw

.endc
.end
" }
C {devices/lab_wire.sym} 420 -280 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 420 -190 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/titleblock.sym} 760 0 0 0 {name=l10 author="Christoph Weiser" license="Apache-2.0" year="2026"}
C {devices/noconn.sym} 620 -260 2 0 {name=l2}
C {devices/ngspice_probe.sym} 620 -260 0 0 {name=r32}
C {devices/lab_wire.sym} 420 -240 0 0 {name=l3 sig_type=std_logic lab=vss,7*(vdd)
}
C {devices/vsource.sym} 610 -170 0 0 {name=vm value=0
}
C {devices/lab_wire.sym} 180 -230 3 1 {name=l8 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 420 -220 0 0 {name=l11 sig_type=std_logic lab=vdd
}
C {devices/code.sym} 780 -220 0 0 {name=CORNERS_NG 
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
C {devices/code.sym} 840 -450 0 0 {name=EXT 
only_toplevel=false
format="tcleval( @value )"
value="* extract

* tb_amplifier pex
*.include \\\\$::DESIGN_PATH\\\\/sch/bandgap_cm/bg_amplifier/bg_amplifier.pex.spice

* bandgap pex
*.include \\\\$::DESIGN_PATH\\\\/sch/bandgap_cm/bandgap/bandgap.pex.spice
"}
