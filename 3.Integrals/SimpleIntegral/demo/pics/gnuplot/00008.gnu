set terminal png size 1024,768
set output "pngs/00008.png" 
set title "N = 8, error = 0.0258913162" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.1250000000,f(3.0625000000) `
set obj rect from 3.1250000000,0  to 3.2500000000,f(3.1875000000) `
set obj rect from 3.2500000000,0  to 3.3750000000,f(3.3125000000) `
set obj rect from 3.3750000000,0  to 3.5000000000,f(3.4375000000) `
set obj rect from 3.5000000000,0  to 3.6250000000,f(3.5625000000) `
set obj rect from 3.6250000000,0  to 3.7500000000,f(3.6875000000) `
set obj rect from 3.7500000000,0  to 3.8750000000,f(3.8125000000) `
set obj rect from 3.8750000000,0  to 4.0000000000,f(3.9375000000) `
plot f(x) lt 1 
