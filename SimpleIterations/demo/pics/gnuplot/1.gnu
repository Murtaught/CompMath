set terminal png size 1024,768
set output "pngs/1.png" 
set title "x = 3.60164020 +- 0.07925628 (2.20056075%) " 
set xrange [3.00000000 : 4.00000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
phi(x) =  0.1071428571428571*(x*x)+-0.05357142857142857*(x*x*x)+1.214285714285714*x+0.375
x_(x)  = x
set xtics add ("x1" 3.60164020) 
set style arrow 1 nohead 
set arrow from 3.60164020, 0 to 3.60164020, phi(3.60164020) 
set arrow from 3.60164020, phi(3.60164020) to phi(3.60164020), phi(3.60164020) 
set arrow from phi(3.60164020), phi(3.60164020) to phi(3.60164020), 0 
plot phi(x) lt 1, x_(x) lt 3 
