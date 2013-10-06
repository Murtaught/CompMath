set terminal png size 1024,768
set output "pngs/1.png" 
set title "x = 3.67857143 +- 0.90909091 (24.71315093%) " 
set xrange [3.00000000 : 4.00000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) =  -4.0*x+(x*x*x)+-2.0*(x*x)-7.0
g(x) = 21.88137755 * x + (-79.49225583) 
set xtics add ("x1" 3.67857143) 
plot f(x) lt 1, g(x) lt 3 
