set terminal png size 1024,768
set output "pngs/00014.png" 
set title "N = 14, error = 0.0084543073" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.0714285714,f(3.0357142857) `
set obj rect from 3.0714285714,0  to 3.1428571429,f(3.1071428571) `
set obj rect from 3.1428571429,0  to 3.2142857143,f(3.1785714286) `
set obj rect from 3.2142857143,0  to 3.2857142857,f(3.2500000000) `
set obj rect from 3.2857142857,0  to 3.3571428571,f(3.3214285714) `
set obj rect from 3.3571428571,0  to 3.4285714286,f(3.3928571429) `
set obj rect from 3.4285714286,0  to 3.5000000000,f(3.4642857143) `
set obj rect from 3.5000000000,0  to 3.5714285714,f(3.5357142857) `
set obj rect from 3.5714285714,0  to 3.6428571429,f(3.6071428571) `
set obj rect from 3.6428571429,0  to 3.7142857143,f(3.6785714286) `
set obj rect from 3.7142857143,0  to 3.7857142857,f(3.7500000000) `
set obj rect from 3.7857142857,0  to 3.8571428571,f(3.8214285714) `
set obj rect from 3.8571428571,0  to 3.9285714286,f(3.8928571429) `
set obj rect from 3.9285714286,0  to 4.0000000000,f(3.9642857143) `
plot f(x) lt 1 
