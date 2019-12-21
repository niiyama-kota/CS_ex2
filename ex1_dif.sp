* ex1_dif.sp
.options post temp=27

v1 in 0 pwl ( 0.0u 0.0
+	      99.5u 0.0
+	      100.5u 2.5
+	      199.5u 2.5
+	      200.5u 0.0 )
c1 in out 510.0p 
r1 out 0 10.0k 


.tran 0.1u 300u
.control
set hcopydevtype=postscript
set hcopypscolor=1
set color0=rgb:0/0/0
run
hardcopy ex1_dif.ps v(out)
meas tran vMax FIND v(out) WHEN time=100.5u
let vMid=vMax*0.37
*teval2 is a half amp time of output
meas tran teval2 WHEN v(out)=vMid CROSS=2
*100.0u is a half amp time of input
let delta=teval2-100.0u
print delta
.endc

.end