* ex1_integral.sp
.options post temp=27

v1 in 0 pwl ( 0.0u 0.0
+	      99.5u 0.0
+	      100.5u 2.5
+	      199.5u 2.5
+	      200.5u 0.0 )
c1 out 0 510.0p 
r1 in out 10.0k 


.tran 0.1u 300u

.control
set hcopydevtype=postscript
set hcopypscolor=1
set color0=rgb:0/0/0
run
hardcopy ex1_integral.ps v(out)
*vMid is 63% of the amp
let vMid=2.5*0.63
*teval2 is the time when v indicate vMid
meas tran teval2 WHEN v(out)=vMid
let delta=teval2-100.0u
print delta
.endc

.end
