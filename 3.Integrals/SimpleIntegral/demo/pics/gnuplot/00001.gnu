set terminal png size 1024,768
set output "pngs/00001.png" 
set title "N = 1, error = 1.6570442370" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 4.0000000000,f(3.5000000000) `
plot f(x) lt 1 
