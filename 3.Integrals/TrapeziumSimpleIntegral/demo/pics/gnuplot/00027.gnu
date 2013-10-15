set terminal png size 1024,768
set output "pngs/00027.png" 
set title "N = 27, error = 0.0045460747" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.0370370370, f(3.0370370370) to 3.0370370370, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.0370370370, 0 to 3.0370370370, f(3.0370370370) to 3.0740740741, f(3.0740740741) to 3.0740740741, 0 to 3.0370370370, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.0740740741, 0 to 3.0740740741, f(3.0740740741) to 3.1111111111, f(3.1111111111) to 3.1111111111, 0 to 3.0740740741, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.1111111111, 0 to 3.1111111111, f(3.1111111111) to 3.1481481481, f(3.1481481481) to 3.1481481481, 0 to 3.1111111111, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.1481481481, 0 to 3.1481481481, f(3.1481481481) to 3.1851851852, f(3.1851851852) to 3.1851851852, 0 to 3.1481481481, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 6 polygon from 3.1851851852, 0 to 3.1851851852, f(3.1851851852) to 3.2222222222, f(3.2222222222) to 3.2222222222, 0 to 3.1851851852, 0 
set object 6 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 7 polygon from 3.2222222222, 0 to 3.2222222222, f(3.2222222222) to 3.2592592593, f(3.2592592593) to 3.2592592593, 0 to 3.2222222222, 0 
set object 7 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 8 polygon from 3.2592592593, 0 to 3.2592592593, f(3.2592592593) to 3.2962962963, f(3.2962962963) to 3.2962962963, 0 to 3.2592592593, 0 
set object 8 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 9 polygon from 3.2962962963, 0 to 3.2962962963, f(3.2962962963) to 3.3333333333, f(3.3333333333) to 3.3333333333, 0 to 3.2962962963, 0 
set object 9 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 10 polygon from 3.3333333333, 0 to 3.3333333333, f(3.3333333333) to 3.3703703704, f(3.3703703704) to 3.3703703704, 0 to 3.3333333333, 0 
set object 10 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 11 polygon from 3.3703703704, 0 to 3.3703703704, f(3.3703703704) to 3.4074074074, f(3.4074074074) to 3.4074074074, 0 to 3.3703703704, 0 
set object 11 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 12 polygon from 3.4074074074, 0 to 3.4074074074, f(3.4074074074) to 3.4444444444, f(3.4444444444) to 3.4444444444, 0 to 3.4074074074, 0 
set object 12 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 13 polygon from 3.4444444444, 0 to 3.4444444444, f(3.4444444444) to 3.4814814815, f(3.4814814815) to 3.4814814815, 0 to 3.4444444444, 0 
set object 13 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 14 polygon from 3.4814814815, 0 to 3.4814814815, f(3.4814814815) to 3.5185185185, f(3.5185185185) to 3.5185185185, 0 to 3.4814814815, 0 
set object 14 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 15 polygon from 3.5185185185, 0 to 3.5185185185, f(3.5185185185) to 3.5555555556, f(3.5555555556) to 3.5555555556, 0 to 3.5185185185, 0 
set object 15 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 16 polygon from 3.5555555556, 0 to 3.5555555556, f(3.5555555556) to 3.5925925926, f(3.5925925926) to 3.5925925926, 0 to 3.5555555556, 0 
set object 16 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 17 polygon from 3.5925925926, 0 to 3.5925925926, f(3.5925925926) to 3.6296296296, f(3.6296296296) to 3.6296296296, 0 to 3.5925925926, 0 
set object 17 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 18 polygon from 3.6296296296, 0 to 3.6296296296, f(3.6296296296) to 3.6666666667, f(3.6666666667) to 3.6666666667, 0 to 3.6296296296, 0 
set object 18 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 19 polygon from 3.6666666667, 0 to 3.6666666667, f(3.6666666667) to 3.7037037037, f(3.7037037037) to 3.7037037037, 0 to 3.6666666667, 0 
set object 19 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 20 polygon from 3.7037037037, 0 to 3.7037037037, f(3.7037037037) to 3.7407407407, f(3.7407407407) to 3.7407407407, 0 to 3.7037037037, 0 
set object 20 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 21 polygon from 3.7407407407, 0 to 3.7407407407, f(3.7407407407) to 3.7777777778, f(3.7777777778) to 3.7777777778, 0 to 3.7407407407, 0 
set object 21 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 22 polygon from 3.7777777778, 0 to 3.7777777778, f(3.7777777778) to 3.8148148148, f(3.8148148148) to 3.8148148148, 0 to 3.7777777778, 0 
set object 22 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 23 polygon from 3.8148148148, 0 to 3.8148148148, f(3.8148148148) to 3.8518518519, f(3.8518518519) to 3.8518518519, 0 to 3.8148148148, 0 
set object 23 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 24 polygon from 3.8518518519, 0 to 3.8518518519, f(3.8518518519) to 3.8888888889, f(3.8888888889) to 3.8888888889, 0 to 3.8518518519, 0 
set object 24 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 25 polygon from 3.8888888889, 0 to 3.8888888889, f(3.8888888889) to 3.9259259259, f(3.9259259259) to 3.9259259259, 0 to 3.8888888889, 0 
set object 25 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 26 polygon from 3.9259259259, 0 to 3.9259259259, f(3.9259259259) to 3.9629629630, f(3.9629629630) to 3.9629629630, 0 to 3.9259259259, 0 
set object 26 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 27 polygon from 3.9629629630, 0 to 3.9629629630, f(3.9629629630) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.9629629630, 0 
set object 27 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
