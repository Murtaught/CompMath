set terminal png size 1024,768
set output "pngs/00002.png" 
set title "N = 2, error = 0.4142610593" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.5000000000,f(3.2500000000) `
set obj rect from 3.5000000000,0  to 4.0000000000,f(3.7500000000) `
plot f(x) lt 1 
