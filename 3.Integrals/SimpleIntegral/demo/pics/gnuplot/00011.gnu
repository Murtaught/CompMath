set terminal png size 1024,768
set output "pngs/00011.png" 
set title "N = 11, error = 0.0136945805" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.0909090909,f(3.0454545455) `
set obj rect from 3.0909090909,0  to 3.1818181818,f(3.1363636364) `
set obj rect from 3.1818181818,0  to 3.2727272727,f(3.2272727273) `
set obj rect from 3.2727272727,0  to 3.3636363636,f(3.3181818182) `
set obj rect from 3.3636363636,0  to 3.4545454545,f(3.4090909091) `
set obj rect from 3.4545454545,0  to 3.5454545455,f(3.5000000000) `
set obj rect from 3.5454545455,0  to 3.6363636364,f(3.5909090909) `
set obj rect from 3.6363636364,0  to 3.7272727273,f(3.6818181818) `
set obj rect from 3.7272727273,0  to 3.8181818182,f(3.7727272727) `
set obj rect from 3.8181818182,0  to 3.9090909091,f(3.8636363636) `
set obj rect from 3.9090909091,0  to 4.0000000000,f(3.9545454545) `
plot f(x) lt 1 
