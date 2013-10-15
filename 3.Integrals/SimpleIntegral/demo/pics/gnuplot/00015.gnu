set terminal png size 1024,768
set output "pngs/00015.png" 
set title "N = 15, error = 0.0073646411" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.0666666667,f(3.0333333333) `
set obj rect from 3.0666666667,0  to 3.1333333333,f(3.1000000000) `
set obj rect from 3.1333333333,0  to 3.2000000000,f(3.1666666667) `
set obj rect from 3.2000000000,0  to 3.2666666667,f(3.2333333333) `
set obj rect from 3.2666666667,0  to 3.3333333333,f(3.3000000000) `
set obj rect from 3.3333333333,0  to 3.4000000000,f(3.3666666667) `
set obj rect from 3.4000000000,0  to 3.4666666667,f(3.4333333333) `
set obj rect from 3.4666666667,0  to 3.5333333333,f(3.5000000000) `
set obj rect from 3.5333333333,0  to 3.6000000000,f(3.5666666667) `
set obj rect from 3.6000000000,0  to 3.6666666667,f(3.6333333333) `
set obj rect from 3.6666666667,0  to 3.7333333333,f(3.7000000000) `
set obj rect from 3.7333333333,0  to 3.8000000000,f(3.7666666667) `
set obj rect from 3.8000000000,0  to 3.8666666667,f(3.8333333333) `
set obj rect from 3.8666666667,0  to 3.9333333333,f(3.9000000000) `
set obj rect from 3.9333333333,0  to 4.0000000000,f(3.9666666667) `
plot f(x) lt 1 
