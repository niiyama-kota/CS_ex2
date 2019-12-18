* ex3_2
.options post temp=27
.include mos_model3
.include logic.cir


v1 in1 0 pwl ( 0.0n 0.0 49.5n 0.0 50.5n 2.5 99.5n 2.5 100.5n 0.0 )

v2 in2 0 pwl ( 0.0n 0.0 149.5n 0.0 150.5n 2.5 199.5n 2.5 200.5n 0.0 )

v3 in3 0 pwl ( 0.0n 0.0 249.5n 0.0 250.5n 2.5 299.5n 2.5 300.5n 0.0 )

v4 in4 0 pwl ( 0.0n 0.0 349.5n 0.0 350.5n 2.5 399.5n 2.5 400.5n 0.0 )

vc Vdd 0 2.5v

v125 out125 0 1.25v

X1 in1 in1_and Vdd inv
X2 in2 in2_and Vdd inv
X3 in3 in3_and Vdd inv
X4 in4 in4_and Vdd inv
X5 in1_and in2_and out_nand1 Vdd nand2
X6 in3_and in4_and out_nand2 Vdd nand2
X7 out_nand1 out_nand2 out Vdd nor2
c1 out 0 500f

.tran 0.1n 400n
.end