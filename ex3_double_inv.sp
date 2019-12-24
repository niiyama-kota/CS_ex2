* ex3_double_inv.sp
.options post temp=27
.include mos_model3
.include logic.cir


v1 in1 0 pwl ( 0.0n 0.0 49.5n 0.0 50.5n 2.5 99.5n 2.5 100.5n 0.0 )

v2 in2 0 pwl ( 0.0n 0.0 149.5n 0.0 150.5n 2.5 199.5n 2.5 200.5n 0.0 )

v3 in3 0 pwl ( 0.0n 0.0 249.5n 0.0 250.5n 2.5 299.5n 2.5 300.5n 0.0 )

v4 in4 0 pwl ( 0.0n 0.0 349.5n 0.0 350.5n 2.5 399.5n 2.5 400.5n 0.0 )

vc Vdd 0 2.5v


X1 in1 in1_and Vdd inv
X2 in2 in2_and Vdd inv
X3 in3 in3_and Vdd inv
X4 in4 in4_and Vdd inv
X5 in1_and in2_and in3_and in4_and out_nand Vdd nand4
X6 out_nand out Vdd invp2
c1 out 0 500f

.tran 0.1n 500n

.control
set hcopydevtype=postscript
set hcopypscolor=1
set color0=rgb:0/0/0
run
hardcopy ex3_double_inv.ps v(out)
meas tran teval1 WHEN v(out)=1.25 CROSS=1
meas tran teval2 WHEN v(out)=1.25 CROSS=2
meas tran teval3 WHEN v(out)=1.25 CROSS=3
meas tran teval4 WHEN v(out)=1.25 CROSS=4
meas tran teval5 WHEN v(out)=1.25 CROSS=5
meas tran teval6 WHEN v(out)=1.25 CROSS=6
meas tran teval7 WHEN v(out)=1.25 CROSS=7
meas tran teval8 WHEN v(out)=1.25 CROSS=8
let delta1=teval1-50.0n
print delta1
let delta2=teval2-100.0n
print delta2
let delta3=teval3-150.0n
print delta3
let delta4=teval4-200.0n
print delta4
let delta5=teval5-250.0n
print delta5
let delta6=teval6-300.0n
print delta6
let delta7=teval7-350.0n
print delta7
let delta8=teval8-400.0n
print delta8
let average=(delta1+delta2+delta3
+ +delta4+delta5+delta6+delta7+delta8)/8
print average
.endc

.end
