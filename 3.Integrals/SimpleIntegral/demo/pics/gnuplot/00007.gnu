set terminal png size 1024,768
set output "pngs/00007.png" 
set title "N = 7, error = 0.0338172293" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.1428571429,f(3.0714285714) `
set obj rect from 3.1428571429,0  to 3.2857142857,f(3.2142857143) `
set obj rect from 3.2857142857,0  to 3.4285714286,f(3.3571428571) `
set obj rect from 3.4285714286,0  to 3.5714285714,f(3.5000000000) `
set obj rect from 3.5714285714,0  to 3.7142857143,f(3.6428571429) `
set obj rect from 3.7142857143,0  to 3.8571428571,f(3.7857142857) `
set obj rect from 3.8571428571,0  to 4.0000000000,f(3.9285714286) `
plot f(x) lt 1 
