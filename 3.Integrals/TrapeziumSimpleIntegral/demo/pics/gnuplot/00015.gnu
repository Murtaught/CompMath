set terminal png size 1024,768
set output "pngs/00015.png" 
set title "N = 15, error = 0.0147292821" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.0666666667, f(3.0666666667) to 3.0666666667, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.0666666667, 0 to 3.0666666667, f(3.0666666667) to 3.1333333333, f(3.1333333333) to 3.1333333333, 0 to 3.0666666667, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.1333333333, 0 to 3.1333333333, f(3.1333333333) to 3.2000000000, f(3.2000000000) to 3.2000000000, 0 to 3.1333333333, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.2000000000, 0 to 3.2000000000, f(3.2000000000) to 3.2666666667, f(3.2666666667) to 3.2666666667, 0 to 3.2000000000, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.2666666667, 0 to 3.2666666667, f(3.2666666667) to 3.3333333333, f(3.3333333333) to 3.3333333333, 0 to 3.2666666667, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 6 polygon from 3.3333333333, 0 to 3.3333333333, f(3.3333333333) to 3.4000000000, f(3.4000000000) to 3.4000000000, 0 to 3.3333333333, 0 
set object 6 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 7 polygon from 3.4000000000, 0 to 3.4000000000, f(3.4000000000) to 3.4666666667, f(3.4666666667) to 3.4666666667, 0 to 3.4000000000, 0 
set object 7 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 8 polygon from 3.4666666667, 0 to 3.4666666667, f(3.4666666667) to 3.5333333333, f(3.5333333333) to 3.5333333333, 0 to 3.4666666667, 0 
set object 8 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 9 polygon from 3.5333333333, 0 to 3.5333333333, f(3.5333333333) to 3.6000000000, f(3.6000000000) to 3.6000000000, 0 to 3.5333333333, 0 
set object 9 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 10 polygon from 3.6000000000, 0 to 3.6000000000, f(3.6000000000) to 3.6666666667, f(3.6666666667) to 3.6666666667, 0 to 3.6000000000, 0 
set object 10 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 11 polygon from 3.6666666667, 0 to 3.6666666667, f(3.6666666667) to 3.7333333333, f(3.7333333333) to 3.7333333333, 0 to 3.6666666667, 0 
set object 11 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 12 polygon from 3.7333333333, 0 to 3.7333333333, f(3.7333333333) to 3.8000000000, f(3.8000000000) to 3.8000000000, 0 to 3.7333333333, 0 
set object 12 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 13 polygon from 3.8000000000, 0 to 3.8000000000, f(3.8000000000) to 3.8666666667, f(3.8666666667) to 3.8666666667, 0 to 3.8000000000, 0 
set object 13 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 14 polygon from 3.8666666667, 0 to 3.8666666667, f(3.8666666667) to 3.9333333333, f(3.9333333333) to 3.9333333333, 0 to 3.8666666667, 0 
set object 14 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 15 polygon from 3.9333333333, 0 to 3.9333333333, f(3.9333333333) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.9333333333, 0 
set object 15 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
