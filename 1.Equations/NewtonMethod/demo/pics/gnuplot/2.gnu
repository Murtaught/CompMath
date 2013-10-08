set terminal png size 1024,768
set output "pngs/2.png" 
set title "x = 3.63287255 +- 0.75131480 (20.68101181%) " 
set xrange [3.00000000 : 4.00000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) =  -4.0*x+(x*x*x)+-2.0*(x*x)-7.0
g(x) = 21.06179867 * x + (-76.49605557) 
set xtics add ("x2" 3.63287255) 
plot f(x) lt 1, g(x) lt 3 
