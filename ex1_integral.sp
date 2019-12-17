* ex1_RC.sp
.options post temp=27

v1 in 0 pwl ( 0.0u 0.0
+	      99.5u 0.0
+	      100.5u 2.5
+	      199.5u 2.5
+	      200.5u 0.0 )
c1 out 0 510.0p 
r1 in out 10.0k 


.tran 0.1u 300u
.end
