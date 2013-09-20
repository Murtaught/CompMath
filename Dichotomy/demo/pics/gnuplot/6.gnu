set terminal png 
set output "pngs/6.png" 
set title "x = 1.3672 +- 0.0391 (2.8571%) " 
set xrange [0.0000 : 5.0000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x) - sin(x) - 3
set arrow from 1.3281,0 to 1.3281,f(1.3281) nohead lt 3 
set xtics add ("a" 1.3281) 
set arrow from 1.4062,0 to 1.4062,f(1.4062) nohead lt 4 
set xtics add ("b" 1.4062) 
plot f(x) lt 1 
