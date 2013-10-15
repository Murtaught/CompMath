set terminal png size 1024,768
set output "pngs/00003.png" 
set title "N = 3, error = 0.3682320527" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.3333333333, f(3.3333333333) to 3.3333333333, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.3333333333, 0 to 3.3333333333, f(3.3333333333) to 3.6666666667, f(3.6666666667) to 3.6666666667, 0 to 3.3333333333, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.6666666667, 0 to 3.6666666667, f(3.6666666667) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.6666666667, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
