*ex2_2_triple_inv
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
X3 out 0 Vdd inv
X4 out 0 Vdd inv
v2 Vdd 0 2.5v


.tran 0.1n 300n

.control
set hcopydevtype=postscript
set hcopypscolor=1
set color0=rgb:0/0/0
run
hardcopy ex2_2_triple_inv.ps v(out)
meas tran teval1 WHEN v(out)=1.25 CROSS=1
let delta1=teval1-100n
print delta1
meas tran teval2 WHEN v(out)=1.25 CROSS=2
let delta2=teval2-200n
print delta2
.endc

.end