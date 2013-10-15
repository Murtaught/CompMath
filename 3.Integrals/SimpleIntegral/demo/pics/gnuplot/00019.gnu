set terminal png size 1024,768
set output "pngs/00019.png" 
set title "N = 19, error = 0.0045901502" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.0526315789,f(3.0263157895) `
set obj rect from 3.0526315789,0  to 3.1052631579,f(3.0789473684) `
set obj rect from 3.1052631579,0  to 3.1578947368,f(3.1315789474) `
set obj rect from 3.1578947368,0  to 3.2105263158,f(3.1842105263) `
set obj rect from 3.2105263158,0  to 3.2631578947,f(3.2368421053) `
set obj rect from 3.2631578947,0  to 3.3157894737,f(3.2894736842) `
set obj rect from 3.3157894737,0  to 3.3684210526,f(3.3421052632) `
set obj rect from 3.3684210526,0  to 3.4210526316,f(3.3947368421) `
set obj rect from 3.4210526316,0  to 3.4736842105,f(3.4473684211) `
set obj rect from 3.4736842105,0  to 3.5263157895,f(3.5000000000) `
set obj rect from 3.5263157895,0  to 3.5789473684,f(3.5526315789) `
set obj rect from 3.5789473684,0  to 3.6315789474,f(3.6052631579) `
set obj rect from 3.6315789474,0  to 3.6842105263,f(3.6578947368) `
set obj rect from 3.6842105263,0  to 3.7368421053,f(3.7105263158) `
set obj rect from 3.7368421053,0  to 3.7894736842,f(3.7631578947) `
set obj rect from 3.7894736842,0  to 3.8421052632,f(3.8157894737) `
set obj rect from 3.8421052632,0  to 3.8947368421,f(3.8684210526) `
set obj rect from 3.8947368421,0  to 3.9473684211,f(3.9210526316) `
set obj rect from 3.9473684211,0  to 4.0000000000,f(3.9736842105) `
plot f(x) lt 1 
