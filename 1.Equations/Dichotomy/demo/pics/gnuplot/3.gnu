set terminal png 
set output "pngs/3.png" 
set title "x = 1.5625 +- 0.3125 (20.0000%) " 
set xrange [0.0000 : 5.0000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x) - sin(x) - 3
set arrow from 1.2500,0 to 1.2500,f(1.2500) nohead lt 3 
set xtics add ("a" 1.2500) 
set arrow from 1.8750,0 to 1.8750,f(1.8750) nohead lt 4 
set xtics add ("b" 1.8750) 
plot f(x) lt 1 
