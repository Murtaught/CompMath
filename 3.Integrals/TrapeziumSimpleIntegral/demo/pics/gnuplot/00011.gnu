set terminal png size 1024,768
set output "pngs/00011.png" 
set title "N = 11, error = 0.0273891609" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.0909090909, f(3.0909090909) to 3.0909090909, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.0909090909, 0 to 3.0909090909, f(3.0909090909) to 3.1818181818, f(3.1818181818) to 3.1818181818, 0 to 3.0909090909, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.1818181818, 0 to 3.1818181818, f(3.1818181818) to 3.2727272727, f(3.2727272727) to 3.2727272727, 0 to 3.1818181818, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.2727272727, 0 to 3.2727272727, f(3.2727272727) to 3.3636363636, f(3.3636363636) to 3.3636363636, 0 to 3.2727272727, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.3636363636, 0 to 3.3636363636, f(3.3636363636) to 3.4545454545, f(3.4545454545) to 3.4545454545, 0 to 3.3636363636, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 6 polygon from 3.4545454545, 0 to 3.4545454545, f(3.4545454545) to 3.5454545455, f(3.5454545455) to 3.5454545455, 0 to 3.4545454545, 0 
set object 6 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 7 polygon from 3.5454545455, 0 to 3.5454545455, f(3.5454545455) to 3.6363636364, f(3.6363636364) to 3.6363636364, 0 to 3.5454545455, 0 
set object 7 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 8 polygon from 3.6363636364, 0 to 3.6363636364, f(3.6363636364) to 3.7272727273, f(3.7272727273) to 3.7272727273, 0 to 3.6363636364, 0 
set object 8 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 9 polygon from 3.7272727273, 0 to 3.7272727273, f(3.7272727273) to 3.8181818182, f(3.8181818182) to 3.8181818182, 0 to 3.7272727273, 0 
set object 9 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 10 polygon from 3.8181818182, 0 to 3.8181818182, f(3.8181818182) to 3.9090909091, f(3.9090909091) to 3.9090909091, 0 to 3.8181818182, 0 
set object 10 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 11 polygon from 3.9090909091, 0 to 3.9090909091, f(3.9090909091) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.9090909091, 0 
set object 11 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
