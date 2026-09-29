* Digital Module 
.subckt counter_8b i_reset i_en i_clk o_out_7_ o_out_6_ o_out_5_ o_out_4_ o_out_3_ o_out_2_ o_out_1_ o_out_0_

xuut d_i_reset d_i_en d_i_clk d_o_out_7_ d_o_out_6_ d_o_out_5_ d_o_out_4_ d_o_out_3_ d_o_out_2_ d_o_out_1_ d_o_out_0_ counter_8b_dig

.model adc_buf adc_bridge(in_high=1.2 in_low=0.6 rise_delay=500p fall_delay=500p)
.model dac_buf dac_bridge(out_high=3.3 out_low=0)

aadc1 [i_reset] [d_i_reset] adc_buf
aadc2 [i_en]    [d_i_en]    adc_buf
aadc3 [i_clk]   [d_i_clk]   adc_buf

adac7 [d_o_out_7_] [o_out_7_] dac_buf
adac6 [d_o_out_6_] [o_out_6_] dac_buf
adac5 [d_o_out_5_] [o_out_5_] dac_buf
adac4 [d_o_out_4_] [o_out_4_] dac_buf
adac3 [d_o_out_3_] [o_out_3_] dac_buf
adac2 [d_o_out_2_] [o_out_2_] dac_buf
adac1 [d_o_out_1_] [o_out_1_] dac_buf
adac0 [d_o_out_0_] [o_out_0_] dac_buf

.subckt counter_8b_dig i_reset i_en i_clk o_out.7 o_out.6 o_out.5 o_out.4 o_out.3 o_out.2 o_out.1 o_out.0
x0 i_reset 1 not
x1 r_out.1 2 not
x2 r_out.3 3 not
x3 r_out.4 4 not
x4 r_out.5 5 not
x5 r_out.7 6 not
x6 r_out.0 i_en 7 nand
x7 2 7 8 nor
x8 r_out.2 8 9 nor
x9 r_out.1 r_out.2 10 nand
x10 7 10 11 nor
x11 r_out.2 8 12 nand
x12 1 12 13 nand
x13 9 13 14.2 nor
x14 3 12 15 nor
x15 r_out.3 11 16 nand
x16 r_out.3 11 17 nor
x17 i_reset 17 18 nor
x18 16 18 19 nand
x19 19 14.3 not
x20 4 16 20 nor
x21 r_out.4 15 21 nand
x22 r_out.4 15 22 nor
x23 i_reset 22 23 nor
x24 21 23 24 nand
x25 24 14.4 not
x26 5 21 25 nor
x27 r_out.5 20 26 nand
x28 r_out.5 20 27 nor
x29 i_reset 27 28 nor
x30 26 28 29 nand
x31 29 14.5 not
x32 r_out.6 25 30 nand
x33 r_out.6 25 31 nor
x34 i_reset 31 32 nor
x35 30 32 33 nand
x36 33 14.6 not
x37 6 30 34 nor
x38 6 30 35 nand
x39 1 35 36 nand
x40 34 36 14.7 nor
x41 r_out.0 i_en 37 nor
x42 1 7 38 nand
x43 37 38 14.0 nor
x44 2 7 39 nand
x45 1 39 40 nand
x46 8 40 14.1 nor
x47 i_clk 14.0 r_out.0 dff
x48 i_clk 14.1 r_out.1 dff
x49 i_clk 14.2 r_out.2 dff
x50 i_clk 14.3 r_out.3 dff
x51 i_clk 14.4 r_out.4 dff
x52 i_clk 14.5 r_out.5 dff
x53 i_clk 14.6 r_out.6 dff
x54 i_clk 14.7 r_out.7 dff
v0 r_out.0 o_out.0 dc 0
v1 r_out.1 o_out.1 dc 0
v2 r_out.2 o_out.2 dc 0
v3 r_out.3 o_out.3 dc 0
v4 r_out.4 o_out.4 dc 0
v5 r_out.5 o_out.5 dc 0
v6 r_out.6 o_out.6 dc 0
v7 r_out.7 o_out.7 dc 0
.ends
.ends
