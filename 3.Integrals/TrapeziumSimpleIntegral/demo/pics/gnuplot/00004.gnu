set terminal png size 1024,768
set output "pngs/00004.png" 
set title "N = 4, error = 0.2071305296" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.2500000000, f(3.2500000000) to 3.2500000000, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.2500000000, 0 to 3.2500000000, f(3.2500000000) to 3.5000000000, f(3.5000000000) to 3.5000000000, 0 to 3.2500000000, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.5000000000, 0 to 3.5000000000, f(3.5000000000) to 3.7500000000, f(3.7500000000) to 3.7500000000, 0 to 3.5000000000, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.7500000000, 0 to 3.7500000000, f(3.7500000000) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.7500000000, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
