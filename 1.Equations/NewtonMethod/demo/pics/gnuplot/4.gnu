set terminal png size 1024,768
set output "pngs/4.png" 
set title "x = 3.63198081 +- 0.23939205 (6.59122562%) " 
set xrange [3.00000000 : 4.00000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) =  -4.0*x+(x*x*x)+-2.0*(x*x)-7.0
g(x) = 21.04593049 * x + (-76.43841559) 
set xtics add ("x4" 3.63198081) 
plot f(x) lt 1, g(x) lt 3 
