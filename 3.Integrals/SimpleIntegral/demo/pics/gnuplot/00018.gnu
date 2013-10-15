set terminal png size 1024,768
set output "pngs/00018.png" 
set title "N = 18, error = 0.0051143341" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.0555555556,f(3.0277777778) `
set obj rect from 3.0555555556,0  to 3.1111111111,f(3.0833333333) `
set obj rect from 3.1111111111,0  to 3.1666666667,f(3.1388888889) `
set obj rect from 3.1666666667,0  to 3.2222222222,f(3.1944444444) `
set obj rect from 3.2222222222,0  to 3.2777777778,f(3.2500000000) `
set obj rect from 3.2777777778,0  to 3.3333333333,f(3.3055555556) `
set obj rect from 3.3333333333,0  to 3.3888888889,f(3.3611111111) `
set obj rect from 3.3888888889,0  to 3.4444444444,f(3.4166666667) `
set obj rect from 3.4444444444,0  to 3.5000000000,f(3.4722222222) `
set obj rect from 3.5000000000,0  to 3.5555555556,f(3.5277777778) `
set obj rect from 3.5555555556,0  to 3.6111111111,f(3.5833333333) `
set obj rect from 3.6111111111,0  to 3.6666666667,f(3.6388888889) `
set obj rect from 3.6666666667,0  to 3.7222222222,f(3.6944444444) `
set obj rect from 3.7222222222,0  to 3.7777777778,f(3.7500000000) `
set obj rect from 3.7777777778,0  to 3.8333333333,f(3.8055555556) `
set obj rect from 3.8333333333,0  to 3.8888888889,f(3.8611111111) `
set obj rect from 3.8888888889,0  to 3.9444444444,f(3.9166666667) `
set obj rect from 3.9444444444,0  to 4.0000000000,f(3.9722222222) `
plot f(x) lt 1 
