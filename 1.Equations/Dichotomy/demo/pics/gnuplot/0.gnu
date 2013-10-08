set terminal png 
set output "pngs/0.png" 
set title "x = 2.5000 +- 2.5000 (100.0000%) " 
set xrange [0.0000 : 5.0000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x) - sin(x) - 3
set arrow from 0.0000,0 to 0.0000,f(0.0000) nohead lt 3 
set xtics add ("a" 0.0000) 
set arrow from 5.0000,0 to 5.0000,f(5.0000) nohead lt 4 
set xtics add ("b" 5.0000) 
plot f(x) lt 1 
