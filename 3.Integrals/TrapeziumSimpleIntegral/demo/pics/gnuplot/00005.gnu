set terminal png size 1024,768
set output "pngs/00005.png" 
set title "N = 5, error = 0.1325635390" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.2000000000, f(3.2000000000) to 3.2000000000, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.2000000000, 0 to 3.2000000000, f(3.2000000000) to 3.4000000000, f(3.4000000000) to 3.4000000000, 0 to 3.2000000000, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.4000000000, 0 to 3.4000000000, f(3.4000000000) to 3.6000000000, f(3.6000000000) to 3.6000000000, 0 to 3.4000000000, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.6000000000, 0 to 3.6000000000, f(3.6000000000) to 3.8000000000, f(3.8000000000) to 3.8000000000, 0 to 3.6000000000, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.8000000000, 0 to 3.8000000000, f(3.8000000000) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.8000000000, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
