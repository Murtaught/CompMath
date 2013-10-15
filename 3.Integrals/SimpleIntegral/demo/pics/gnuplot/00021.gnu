set terminal png size 1024,768
set output "pngs/00021.png" 
set title "N = 21, error = 0.0037574699" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.0476190476,f(3.0238095238) `
set obj rect from 3.0476190476,0  to 3.0952380952,f(3.0714285714) `
set obj rect from 3.0952380952,0  to 3.1428571429,f(3.1190476190) `
set obj rect from 3.1428571429,0  to 3.1904761905,f(3.1666666667) `
set obj rect from 3.1904761905,0  to 3.2380952381,f(3.2142857143) `
set obj rect from 3.2380952381,0  to 3.2857142857,f(3.2619047619) `
set obj rect from 3.2857142857,0  to 3.3333333333,f(3.3095238095) `
set obj rect from 3.3333333333,0  to 3.3809523810,f(3.3571428571) `
set obj rect from 3.3809523810,0  to 3.4285714286,f(3.4047619048) `
set obj rect from 3.4285714286,0  to 3.4761904762,f(3.4523809524) `
set obj rect from 3.4761904762,0  to 3.5238095238,f(3.5000000000) `
set obj rect from 3.5238095238,0  to 3.5714285714,f(3.5476190476) `
set obj rect from 3.5714285714,0  to 3.6190476190,f(3.5952380952) `
set obj rect from 3.6190476190,0  to 3.6666666667,f(3.6428571429) `
set obj rect from 3.6666666667,0  to 3.7142857143,f(3.6904761905) `
set obj rect from 3.7142857143,0  to 3.7619047619,f(3.7380952381) `
set obj rect from 3.7619047619,0  to 3.8095238095,f(3.7857142857) `
set obj rect from 3.8095238095,0  to 3.8571428571,f(3.8333333333) `
set obj rect from 3.8571428571,0  to 3.9047619048,f(3.8809523810) `
set obj rect from 3.9047619048,0  to 3.9523809524,f(3.9285714286) `
set obj rect from 3.9523809524,0  to 4.0000000000,f(3.9761904762) `
plot f(x) lt 1 
