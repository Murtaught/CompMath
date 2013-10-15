set terminal png size 1024,768
set output "pngs/00005.png" 
set title "N = 5, error = 0.0662817695" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.2000000000,f(3.1000000000) `
set obj rect from 3.2000000000,0  to 3.4000000000,f(3.3000000000) `
set obj rect from 3.4000000000,0  to 3.6000000000,f(3.5000000000) `
set obj rect from 3.6000000000,0  to 3.8000000000,f(3.7000000000) `
set obj rect from 3.8000000000,0  to 4.0000000000,f(3.9000000000) `
plot f(x) lt 1 
