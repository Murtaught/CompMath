set terminal png size 1024,768
set output "pngs/00020.png" 
set title "N = 20, error = 0.0041426106" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.0500000000,f(3.0250000000) `
set obj rect from 3.0500000000,0  to 3.1000000000,f(3.0750000000) `
set obj rect from 3.1000000000,0  to 3.1500000000,f(3.1250000000) `
set obj rect from 3.1500000000,0  to 3.2000000000,f(3.1750000000) `
set obj rect from 3.2000000000,0  to 3.2500000000,f(3.2250000000) `
set obj rect from 3.2500000000,0  to 3.3000000000,f(3.2750000000) `
set obj rect from 3.3000000000,0  to 3.3500000000,f(3.3250000000) `
set obj rect from 3.3500000000,0  to 3.4000000000,f(3.3750000000) `
set obj rect from 3.4000000000,0  to 3.4500000000,f(3.4250000000) `
set obj rect from 3.4500000000,0  to 3.5000000000,f(3.4750000000) `
set obj rect from 3.5000000000,0  to 3.5500000000,f(3.5250000000) `
set obj rect from 3.5500000000,0  to 3.6000000000,f(3.5750000000) `
set obj rect from 3.6000000000,0  to 3.6500000000,f(3.6250000000) `
set obj rect from 3.6500000000,0  to 3.7000000000,f(3.6750000000) `
set obj rect from 3.7000000000,0  to 3.7500000000,f(3.7250000000) `
set obj rect from 3.7500000000,0  to 3.8000000000,f(3.7750000000) `
set obj rect from 3.8000000000,0  to 3.8500000000,f(3.8250000000) `
set obj rect from 3.8500000000,0  to 3.9000000000,f(3.8750000000) `
set obj rect from 3.9000000000,0  to 3.9500000000,f(3.9250000000) `
set obj rect from 3.9500000000,0  to 4.0000000000,f(3.9750000000) `
plot f(x) lt 1 
