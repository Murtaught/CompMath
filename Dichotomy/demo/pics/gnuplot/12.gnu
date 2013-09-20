set terminal png 
set output "pngs/12.png" 
set title "x = 1.3812 +- 0.0006 (0.0442%) " 
set xrange [0.0000 : 5.0000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x) - sin(x) - 3
set arrow from 1.3806,0 to 1.3806,f(1.3806) nohead lt 3 
set xtics add ("a" 1.3806) 
set arrow from 1.3818,0 to 1.3818,f(1.3818) nohead lt 4 
set xtics add ("b" 1.3818) 
plot f(x) lt 1 
