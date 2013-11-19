set terminal png size 1024,768
set output "plot.png"

set title "y(t)"

set xzeroaxis ls -1
set yzeroaxis ls -1
set grid

plot "data.dat" with lines, exp(x)
