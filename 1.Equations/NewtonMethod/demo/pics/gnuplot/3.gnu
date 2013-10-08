set terminal png size 1024,768
set output "pngs/3.png" 
set title "x = 3.63198114 +- 0.51315812 (14.12887618%) " 
set xrange [3.00000000 : 4.00000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) =  -4.0*x+(x*x*x)+-2.0*(x*x)-7.0
g(x) = 21.04593647 * x + (-76.43843730) 
set xtics add ("x3" 3.63198114) 
plot f(x) lt 1, g(x) lt 3 
