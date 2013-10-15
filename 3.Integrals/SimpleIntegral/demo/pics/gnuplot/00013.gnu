set terminal png size 1024,768
set output "pngs/00013.png" 
set title "N = 13, error = 0.0098049955" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.0769230769,f(3.0384615385) `
set obj rect from 3.0769230769,0  to 3.1538461538,f(3.1153846154) `
set obj rect from 3.1538461538,0  to 3.2307692308,f(3.1923076923) `
set obj rect from 3.2307692308,0  to 3.3076923077,f(3.2692307692) `
set obj rect from 3.3076923077,0  to 3.3846153846,f(3.3461538462) `
set obj rect from 3.3846153846,0  to 3.4615384615,f(3.4230769231) `
set obj rect from 3.4615384615,0  to 3.5384615385,f(3.5000000000) `
set obj rect from 3.5384615385,0  to 3.6153846154,f(3.5769230769) `
set obj rect from 3.6153846154,0  to 3.6923076923,f(3.6538461538) `
set obj rect from 3.6923076923,0  to 3.7692307692,f(3.7307692308) `
set obj rect from 3.7692307692,0  to 3.8461538462,f(3.8076923077) `
set obj rect from 3.8461538462,0  to 3.9230769231,f(3.8846153846) `
set obj rect from 3.9230769231,0  to 4.0000000000,f(3.9615384615) `
plot f(x) lt 1 
