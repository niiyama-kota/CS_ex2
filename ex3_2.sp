* ex3_2
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
X5 in1_and in2_and out_nand1 Vdd nand2
X6 in3_and in4_and out_nand2 Vdd nand2
X7 out_nand1 out_nand2 out Vdd nor2
c1 out 0 500f

.tran 0.1n 500n
.measure tran teval1 WHEN v(out)=1.25 CROSS=1
.measure tran teval2 WHEN v(out)=1.25 CROSS=2
.measure tran teval3 WHEN v(out)=1.25 CROSS=3
.measure tran teval4 WHEN v(out)=1.25 CROSS=4
.measure tran teval5 WHEN v(out)=1.25 CROSS=5
.measure tran teval6 WHEN v(out)=1.25 CROSS=6
.measure tran teval7 WHEN v(out)=1.25 CROSS=7
.measure tran teval8 WHEN v(out)=1.25 CROSS=8
.end