set terminal png size 1024,768
set output "pngs/00026.png" 
set title "N = 26, error = 0.0049024977" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.0384615385, f(3.0384615385) to 3.0384615385, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.0384615385, 0 to 3.0384615385, f(3.0384615385) to 3.0769230769, f(3.0769230769) to 3.0769230769, 0 to 3.0384615385, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.0769230769, 0 to 3.0769230769, f(3.0769230769) to 3.1153846154, f(3.1153846154) to 3.1153846154, 0 to 3.0769230769, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.1153846154, 0 to 3.1153846154, f(3.1153846154) to 3.1538461538, f(3.1538461538) to 3.1538461538, 0 to 3.1153846154, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.1538461538, 0 to 3.1538461538, f(3.1538461538) to 3.1923076923, f(3.1923076923) to 3.1923076923, 0 to 3.1538461538, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 6 polygon from 3.1923076923, 0 to 3.1923076923, f(3.1923076923) to 3.2307692308, f(3.2307692308) to 3.2307692308, 0 to 3.1923076923, 0 
set object 6 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 7 polygon from 3.2307692308, 0 to 3.2307692308, f(3.2307692308) to 3.2692307692, f(3.2692307692) to 3.2692307692, 0 to 3.2307692308, 0 
set object 7 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 8 polygon from 3.2692307692, 0 to 3.2692307692, f(3.2692307692) to 3.3076923077, f(3.3076923077) to 3.3076923077, 0 to 3.2692307692, 0 
set object 8 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 9 polygon from 3.3076923077, 0 to 3.3076923077, f(3.3076923077) to 3.3461538462, f(3.3461538462) to 3.3461538462, 0 to 3.3076923077, 0 
set object 9 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 10 polygon from 3.3461538462, 0 to 3.3461538462, f(3.3461538462) to 3.3846153846, f(3.3846153846) to 3.3846153846, 0 to 3.3461538462, 0 
set object 10 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 11 polygon from 3.3846153846, 0 to 3.3846153846, f(3.3846153846) to 3.4230769231, f(3.4230769231) to 3.4230769231, 0 to 3.3846153846, 0 
set object 11 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 12 polygon from 3.4230769231, 0 to 3.4230769231, f(3.4230769231) to 3.4615384615, f(3.4615384615) to 3.4615384615, 0 to 3.4230769231, 0 
set object 12 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 13 polygon from 3.4615384615, 0 to 3.4615384615, f(3.4615384615) to 3.5000000000, f(3.5000000000) to 3.5000000000, 0 to 3.4615384615, 0 
set object 13 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 14 polygon from 3.5000000000, 0 to 3.5000000000, f(3.5000000000) to 3.5384615385, f(3.5384615385) to 3.5384615385, 0 to 3.5000000000, 0 
set object 14 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 15 polygon from 3.5384615385, 0 to 3.5384615385, f(3.5384615385) to 3.5769230769, f(3.5769230769) to 3.5769230769, 0 to 3.5384615385, 0 
set object 15 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 16 polygon from 3.5769230769, 0 to 3.5769230769, f(3.5769230769) to 3.6153846154, f(3.6153846154) to 3.6153846154, 0 to 3.5769230769, 0 
set object 16 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 17 polygon from 3.6153846154, 0 to 3.6153846154, f(3.6153846154) to 3.6538461538, f(3.6538461538) to 3.6538461538, 0 to 3.6153846154, 0 
set object 17 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 18 polygon from 3.6538461538, 0 to 3.6538461538, f(3.6538461538) to 3.6923076923, f(3.6923076923) to 3.6923076923, 0 to 3.6538461538, 0 
set object 18 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 19 polygon from 3.6923076923, 0 to 3.6923076923, f(3.6923076923) to 3.7307692308, f(3.7307692308) to 3.7307692308, 0 to 3.6923076923, 0 
set object 19 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 20 polygon from 3.7307692308, 0 to 3.7307692308, f(3.7307692308) to 3.7692307692, f(3.7692307692) to 3.7692307692, 0 to 3.7307692308, 0 
set object 20 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 21 polygon from 3.7692307692, 0 to 3.7692307692, f(3.7692307692) to 3.8076923077, f(3.8076923077) to 3.8076923077, 0 to 3.7692307692, 0 
set object 21 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 22 polygon from 3.8076923077, 0 to 3.8076923077, f(3.8076923077) to 3.8461538462, f(3.8461538462) to 3.8461538462, 0 to 3.8076923077, 0 
set object 22 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 23 polygon from 3.8461538462, 0 to 3.8461538462, f(3.8461538462) to 3.8846153846, f(3.8846153846) to 3.8846153846, 0 to 3.8461538462, 0 
set object 23 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 24 polygon from 3.8846153846, 0 to 3.8846153846, f(3.8846153846) to 3.9230769231, f(3.9230769231) to 3.9230769231, 0 to 3.8846153846, 0 
set object 24 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 25 polygon from 3.9230769231, 0 to 3.9230769231, f(3.9230769231) to 3.9615384615, f(3.9615384615) to 3.9615384615, 0 to 3.9230769231, 0 
set object 25 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 26 polygon from 3.9615384615, 0 to 3.9615384615, f(3.9615384615) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.9615384615, 0 
set object 26 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
