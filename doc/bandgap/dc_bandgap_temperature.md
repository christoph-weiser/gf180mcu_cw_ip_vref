# Simulation Results 

Simulation results for dc_bandgap_temperature

## Pre-Layout Simulation

|         | min       | max       | mean      | std      |
|:--------|:----------|:----------|:----------|:---------|
| dv_dt   | 32.53598u | 58.57123u | 42.82626u | 7.88363u |

![dv_dt](pic/sim_sch/dc_bandgap_temperature/dv_dt.png)

![tc](pic/sim_sch/dc_bandgap_temperature/tc.png)
![tc_norm](pic/sim_sch/dc_bandgap_temperature/tc_norm.png)


## Post-Layout Simulation

NGspice has difficulty to converge on the DC operating point of the circuit. 
While less efficient the Temperature coefficient can also be obtained
by stepping through transient simulations. 

For results see:
[tr_bandgap_temperature](tr_bandgap_temperature.md)
