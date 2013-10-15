set terminal png size 1024,768
set output "pngs/00013.png" 
set title "N = 13, error = 0.0196099910" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.0769230769, f(3.0769230769) to 3.0769230769, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.0769230769, 0 to 3.0769230769, f(3.0769230769) to 3.1538461538, f(3.1538461538) to 3.1538461538, 0 to 3.0769230769, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.1538461538, 0 to 3.1538461538, f(3.1538461538) to 3.2307692308, f(3.2307692308) to 3.2307692308, 0 to 3.1538461538, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.2307692308, 0 to 3.2307692308, f(3.2307692308) to 3.3076923077, f(3.3076923077) to 3.3076923077, 0 to 3.2307692308, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.3076923077, 0 to 3.3076923077, f(3.3076923077) to 3.3846153846, f(3.3846153846) to 3.3846153846, 0 to 3.3076923077, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 6 polygon from 3.3846153846, 0 to 3.3846153846, f(3.3846153846) to 3.4615384615, f(3.4615384615) to 3.4615384615, 0 to 3.3846153846, 0 
set object 6 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 7 polygon from 3.4615384615, 0 to 3.4615384615, f(3.4615384615) to 3.5384615385, f(3.5384615385) to 3.5384615385, 0 to 3.4615384615, 0 
set object 7 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 8 polygon from 3.5384615385, 0 to 3.5384615385, f(3.5384615385) to 3.6153846154, f(3.6153846154) to 3.6153846154, 0 to 3.5384615385, 0 
set object 8 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 9 polygon from 3.6153846154, 0 to 3.6153846154, f(3.6153846154) to 3.6923076923, f(3.6923076923) to 3.6923076923, 0 to 3.6153846154, 0 
set object 9 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 10 polygon from 3.6923076923, 0 to 3.6923076923, f(3.6923076923) to 3.7692307692, f(3.7692307692) to 3.7692307692, 0 to 3.6923076923, 0 
set object 10 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 11 polygon from 3.7692307692, 0 to 3.7692307692, f(3.7692307692) to 3.8461538462, f(3.8461538462) to 3.8461538462, 0 to 3.7692307692, 0 
set object 11 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 12 polygon from 3.8461538462, 0 to 3.8461538462, f(3.8461538462) to 3.9230769231, f(3.9230769231) to 3.9230769231, 0 to 3.8461538462, 0 
set object 12 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 13 polygon from 3.9230769231, 0 to 3.9230769231, f(3.9230769231) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.9230769231, 0 
set object 13 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
