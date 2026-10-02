# Current Mode Voltage Reference

## Target Specifications

| Parameter                    | Symbol.  | Min.  | Typ.   | Max.       | Unit. | Condition                         |
| :--------------------------- | :------- | :---: | :----: | :--------: | :---: | :-------------------------------- |
| Supply Voltage               | Vdda     |  3.0  |  3.3   | 5.0        | V     |                                   |
| Output Voltage               | Vbg      |       |  1     |            | V     |                                   |
| Load Capacitance             | Cl       |       |        | 500        | fF    | To archive tset                   |
| Initial Accuracy             | ΔVbgi    | -25   |        | +25        | %     | All PVT, ±3σ yield                | 
| Trimmed Accuracy             | ΔVbgt    | -0.25 | +-0.15 | +0.25      | %     |                                   | 
| Area                         | A        |       |        | 180x220    | µm²   |                                   |
| Temperature Range            | T        |  -40  |        | 85         | °C    |                                   |
| Quiesent Current             | Iq       |       |  20    | 30         | µA    | All PVT                           |
| Power Dissipation            | Pd       |       |  66    | 150        | µW    | All PVT                           |
| Power-down state Current     | Ioff     |       |        | 0.1        | µA    |                                   |
| Temperature coefficient      | Tc       |       |  35    | 85         | µV/°C | All PVT, ±3σ yield                | 
| Line Regulation              | dV/dVdd  |       |  1     | 2          | mV/V  | All PVT                           |
| Line Relative Change         | ΔVvdd    |       |  2     | 4          | mV    | All PVT                           |
| Power Supply Rejection Ratio | PSRR     |  75   |        |            | dB    | f=1Hz, Vdd=3.3V                   |
|                              |          |  60   |        |            | dB    | f=100Hz, Vdd=3.3V                 |   
|                              |          |  40   |        |            | dB    | f=1kHz, Vdd=3.3V                  |
| Noise                        | en       |       |  75    | 80         | µVrms | f=0.1Hz to 10Hz                   |
|                              |          |       |  90    | 100        | µVrms | f=10Hz to 10kHz                   |
| Turn-on settling time        | tset     |       |  8     | 35         | µs    | All PVT, @Cl max, Vbg: +-1% of SS |


## Schematics

The schematics for the circuit are located in [xschem/sch](../xschem/sch)

## Testbenches and Results

The testbenches are located in [xschem/tb](../xschem/tb).

The following overview shows which testbench is used to simulate which specification.
Some might be duplicate where the same specification is checked using different methods.

For **results** see the individual pages.

| Testbench                                            | Parameters         |
| :----------------------------------------------------| :----------------- |
| [op_bandgap](op_bandgap.md)                          | operating point    |
| [ac_bandgap_stb](ac_bandgap_stb.md)                  | loop stability     |
| [ac_bandgap_psrr](ac_bandgap_psrr.md)                | PSRR               |
| [dc_bandgap_supply](dc_bandgap_supply.md)            | dV/dVdd, ΔVvdd     |
| [dc_bandgap_temperature](dc_bandgap_temperature.md)  | Tc                 |
| [mc_bandgap_temperature](mc_bandgap_temperature.md)  | ΔVbgi              |
| [no_bandgap](no_bandgap.md)                          | en                 |
| [op_bandgap_power](op_bandgap_power.md)              | Iq, Pd             |
| [tr_bandgap_psrr](tr_bandgap_psrr.md)                | PSRR               |
| [tr_bandgap_startup](tr_bandgap_startup.md)          | tset               |
| [tr_bandgap_supply](tr_bandgap_supply.md)            | dV/dVdd, ΔVvdd     |
| [tr_bandgap_temperature](tr_bandgap_temperature.md)  | Tc                 |
| [tr_bandgap_trim_ss](tr_bandgap_trim_ss.md)          | ΔVbgt              |


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

Make sure environment variables `PDK` and `PDK_ROOT` are set to point to the 
gf180mcuD pdk.

```
cd xschem
make 
```

## Running PVT simulations

1. Setup the environment as described in Setup section above.
2. Source cadrc `source cadrc`
3. Navigate to the testbench tests folder ([tests](../xschem/tb/bandgap_cm/bandgap/tests))
4. Run the recipe .conf file `runtest --configfile="ac_bandgap_stb.conf"`

**Hint**: give `--cores=N` argument to runtest to distribute the simulation cases
on multiple cores.

