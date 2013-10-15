set terminal png size 1024,768
set output "pngs/00003.png" 
set title "N = 3, error = 0.1841160263" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.3333333333,f(3.1666666667) `
set obj rect from 3.3333333333,0  to 3.6666666667,f(3.5000000000) `
set obj rect from 3.6666666667,0  to 4.0000000000,f(3.8333333333) `
plot f(x) lt 1 
