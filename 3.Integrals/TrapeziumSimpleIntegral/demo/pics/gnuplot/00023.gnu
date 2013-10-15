set terminal png size 1024,768
set output "pngs/00023.png" 
set title "N = 23, error = 0.0062648175" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.0434782609, f(3.0434782609) to 3.0434782609, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.0434782609, 0 to 3.0434782609, f(3.0434782609) to 3.0869565217, f(3.0869565217) to 3.0869565217, 0 to 3.0434782609, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.0869565217, 0 to 3.0869565217, f(3.0869565217) to 3.1304347826, f(3.1304347826) to 3.1304347826, 0 to 3.0869565217, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.1304347826, 0 to 3.1304347826, f(3.1304347826) to 3.1739130435, f(3.1739130435) to 3.1739130435, 0 to 3.1304347826, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.1739130435, 0 to 3.1739130435, f(3.1739130435) to 3.2173913043, f(3.2173913043) to 3.2173913043, 0 to 3.1739130435, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 6 polygon from 3.2173913043, 0 to 3.2173913043, f(3.2173913043) to 3.2608695652, f(3.2608695652) to 3.2608695652, 0 to 3.2173913043, 0 
set object 6 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 7 polygon from 3.2608695652, 0 to 3.2608695652, f(3.2608695652) to 3.3043478261, f(3.3043478261) to 3.3043478261, 0 to 3.2608695652, 0 
set object 7 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 8 polygon from 3.3043478261, 0 to 3.3043478261, f(3.3043478261) to 3.3478260870, f(3.3478260870) to 3.3478260870, 0 to 3.3043478261, 0 
set object 8 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 9 polygon from 3.3478260870, 0 to 3.3478260870, f(3.3478260870) to 3.3913043478, f(3.3913043478) to 3.3913043478, 0 to 3.3478260870, 0 
set object 9 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 10 polygon from 3.3913043478, 0 to 3.3913043478, f(3.3913043478) to 3.4347826087, f(3.4347826087) to 3.4347826087, 0 to 3.3913043478, 0 
set object 10 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 11 polygon from 3.4347826087, 0 to 3.4347826087, f(3.4347826087) to 3.4782608696, f(3.4782608696) to 3.4782608696, 0 to 3.4347826087, 0 
set object 11 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 12 polygon from 3.4782608696, 0 to 3.4782608696, f(3.4782608696) to 3.5217391304, f(3.5217391304) to 3.5217391304, 0 to 3.4782608696, 0 
set object 12 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 13 polygon from 3.5217391304, 0 to 3.5217391304, f(3.5217391304) to 3.5652173913, f(3.5652173913) to 3.5652173913, 0 to 3.5217391304, 0 
set object 13 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 14 polygon from 3.5652173913, 0 to 3.5652173913, f(3.5652173913) to 3.6086956522, f(3.6086956522) to 3.6086956522, 0 to 3.5652173913, 0 
set object 14 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 15 polygon from 3.6086956522, 0 to 3.6086956522, f(3.6086956522) to 3.6521739130, f(3.6521739130) to 3.6521739130, 0 to 3.6086956522, 0 
set object 15 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 16 polygon from 3.6521739130, 0 to 3.6521739130, f(3.6521739130) to 3.6956521739, f(3.6956521739) to 3.6956521739, 0 to 3.6521739130, 0 
set object 16 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 17 polygon from 3.6956521739, 0 to 3.6956521739, f(3.6956521739) to 3.7391304348, f(3.7391304348) to 3.7391304348, 0 to 3.6956521739, 0 
set object 17 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 18 polygon from 3.7391304348, 0 to 3.7391304348, f(3.7391304348) to 3.7826086957, f(3.7826086957) to 3.7826086957, 0 to 3.7391304348, 0 
set object 18 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 19 polygon from 3.7826086957, 0 to 3.7826086957, f(3.7826086957) to 3.8260869565, f(3.8260869565) to 3.8260869565, 0 to 3.7826086957, 0 
set object 19 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 20 polygon from 3.8260869565, 0 to 3.8260869565, f(3.8260869565) to 3.8695652174, f(3.8695652174) to 3.8695652174, 0 to 3.8260869565, 0 
set object 20 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 21 polygon from 3.8695652174, 0 to 3.8695652174, f(3.8695652174) to 3.9130434783, f(3.9130434783) to 3.9130434783, 0 to 3.8695652174, 0 
set object 21 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 22 polygon from 3.9130434783, 0 to 3.9130434783, f(3.9130434783) to 3.9565217391, f(3.9565217391) to 3.9565217391, 0 to 3.9130434783, 0 
set object 22 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 23 polygon from 3.9565217391, 0 to 3.9565217391, f(3.9565217391) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.9565217391, 0 
set object 23 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
