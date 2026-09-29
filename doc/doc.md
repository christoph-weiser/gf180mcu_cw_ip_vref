# Current Mode Voltage Reference

## Target Specifications

| Parameter                    | Symbol.  | Min.  | Typ.   | Max.       | Unit. | Condition                      |
| :--------------------------- | :------- | :---: | :----: | :--------: | :---: | :----------------------------- |
| Supply Voltage               | Vdda     |  3.0  |  3.3   | 5.0        | V     |                                |
| Output Voltage               | Vbg      |       |  1     |            | V     |                                |
| Load Capacitance             | Cl       |       |        | 500        | fF    | To archive tset                |
| Initial Accuracy             | ΔVbg,i   | -2.5  |        | +2.5       | %     | at T=20°C, Vdd=3.3V, ±3σ       | 
| Trimmed Accuracy             | ΔVbg,t   | -0.25 | +-0.15 |  +0.25     | %     | for all possible trimvalues    |
| Area                         | A        |       |        | 200x200    | µm²   |                                |
| Temperature Range            | T        |  -40  |        | 85         | °C    |                                |
| Quiesent Current             | Iq       |       |  15    | 20         | µA    | Vdd=3.0V to 5.0V, T=20°C       |
| Power Dissipation            | Pd       |       |  49.5  | 100        | µW    | Vdd=3.0V to 5.0V, T=20°C       |
| Power-down state Current     | Ioff     |       |        | 1          | nA    |                                |
| Temperature coefficient      | Tc       |       |  27    | 67         | µV/°C | Across full Temperature        | 
|                              |          |       |        |            |       | range, ±3σ yield               |
| Relative change              | ΔVtc     |       |  ±3.4  | ±8.5       | mV    | Across full Temperature        | 
|                              |          |       |        |            |       | range, ±3σ yield               |
| Line Regulation              | dV/dVdd  |       |  1     | 2          | mV/V  | Vdd=3.0V to 5.0V, T=20°C       |
| Line Relative Change         | ΔVvdd    |       |  2     | 4          | mV    | Vdd=3.0V to 5.0V, T=20°C       |
| Power Supply Rejection Ratio | PSRR     |  75   |        |            | dB    | f=1Hz, Vdd=3.3V                |
|                              |          |  60   |        |            | dB    | f=100Hz, Vdd=3.3V              |   
|                              |          |  40   |        |            | dB    | f=1kHz, Vdd=3.3V               |
| Noise                        | en       |       |  75    | 80         | µVrms | f=0.1Hz to 10Hz                |
|                              |          |       |  90    | 100        | µVrms | f=10Hz to 10kHz                |
| Turn-on settling time        | tset     |       |  8u    | 20         | µs    | Vdd=3.0V to 5.0V,              |
|                              |          |       |        |            |       | Across full Temperature,       |
|                              |          |       |        |            |       | @Cl max,                       | 
|                              |          |       |        |            |       | Vbg: +-1% of final value       |


## Schematics

The schematics for the circuit are located in [xschem/sch](../xschem/sch)

## Testbenches

The testbenches are located in [xschem/tb](../xschem/tb).

The following overview shows which testbench is used to simulate which specification.
Some might be duplicate where the same specification is checked using different methods.

- "ac_bandgap_psrr.sch":        PSRR
- "dc_bandgap_power.sch":       Iq, Pd
- "dc_bandgap_supply.sch":      dV/dVdd, ΔVvdd
- "dc_bandgap_temperature.sch": Tc, ΔVtc
- "mc_bandgap_temperature.sch": ΔVbg,i
- "no_bandgap.sch":             en
- "tr_bandgap_psrr.sch"         PSRR
- "tr_bandgap_startup.sch"      tset
- "tr_bandgap_supply.sch"       dV/dVdd, ΔVvdd
- "tr_bandgap_temperature.sch": Tc, ΔVtc
- "tr_bandgap_trim.sch":        ΔVbg,t
- "ac_bandgap_stb.sch":         loop stability
- "op_bandgap.sch":             operating point


## Setup

Prior to running any simulation one should source the cadrc found 
in the xschem folder [xschem/cadrc](../xschem/cadrc).

```
cd xschem
source cadrc
```

Simulation corners and a virtual python environment holding essential tools 
for simulation can be generated simply issuing the make command in the 
[xschem](../xschem) directory.

```
cd xschem
make 
```
