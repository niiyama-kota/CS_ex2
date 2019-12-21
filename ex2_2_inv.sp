*ex2_2_inv
.options post temp=27
.include mos_model3
.include logic.cir


v1 in 0 pwl ( 0.0n 0.0
+	      99.5n 0.0
+	      100.5n 2.5
+	      199.5n 2.5
+	      200.5n 0.0 )
X1 in out Vdd inv
X2 out 0 Vdd inv
v2 Vdd 0 2.5v


.tran 0.1n 300n
.measure tran teval WHEN v(out)=1.25 CROSS=1
.measure tran teval WHEN v(out)=1.25 CROSS=2
.end