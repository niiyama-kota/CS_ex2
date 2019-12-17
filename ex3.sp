* ex3
.options post temp=27
.include mos_model3
.include logic.cir


v1 in1 0 pwl ( 0.0n 0.0
+	      99.5n 0.0
+	      100.5n 0.0
+	      199.5n 0.0
+	      200.5n 0.0 )

v2 in2 0 pwl ( 0.0n 0.0
+	      99.5n 0.0
+	      100.5n 0.0
+	      199.5n 0.0
+	      200.5n 0.0 )

v3 in3 0 pwl ( 0.0n 0.0
+	      99.5n 0.0
+	      100.5n 0.0
+	      199.5n 0.0
+	      200.5n 0.0 )

v4 in4 0 pwl ( 0.0n 0.0
+	      99.5n 0.0
+	      100.5n 2.5
+	      199.5n 2.5
+	      200.5n 0.0 )

vc Vdd 0 2.5v

X1 in1 in1_and Vdd inv
X2 in2 in2_and Vdd inv
X3 in3 in3_and Vdd inv
X4 in4 in4_and Vdd inv
X5 in1_and in2_and in3_and in4_and out_nand Vdd nand4
X6 out_nand out Vdd inv
c1 out 0 500f

.tran 0.1n 300n
.end
