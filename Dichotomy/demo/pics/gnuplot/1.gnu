set terminal png 
set output "pngs/1.png" 
set title "x = 1.2500 +- 1.2500 (100.0000%) " 
set xrange [0.0000 : 5.0000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x) - sin(x) - 3
set arrow from 0.0000,0 to 0.0000,f(0.0000) nohead lt 3 
set xtics add ("a" 0.0000) 
set arrow from 2.5000,0 to 2.5000,f(2.5000) nohead lt 4 
set xtics add ("b" 2.5000) 
plot f(x) lt 1 
