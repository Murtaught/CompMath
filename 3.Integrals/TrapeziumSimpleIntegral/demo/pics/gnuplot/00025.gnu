set terminal png size 1024,768
set output "pngs/00025.png" 
set title "N = 25, error = 0.0053025416" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.0400000000, f(3.0400000000) to 3.0400000000, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.0400000000, 0 to 3.0400000000, f(3.0400000000) to 3.0800000000, f(3.0800000000) to 3.0800000000, 0 to 3.0400000000, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.0800000000, 0 to 3.0800000000, f(3.0800000000) to 3.1200000000, f(3.1200000000) to 3.1200000000, 0 to 3.0800000000, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.1200000000, 0 to 3.1200000000, f(3.1200000000) to 3.1600000000, f(3.1600000000) to 3.1600000000, 0 to 3.1200000000, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.1600000000, 0 to 3.1600000000, f(3.1600000000) to 3.2000000000, f(3.2000000000) to 3.2000000000, 0 to 3.1600000000, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 6 polygon from 3.2000000000, 0 to 3.2000000000, f(3.2000000000) to 3.2400000000, f(3.2400000000) to 3.2400000000, 0 to 3.2000000000, 0 
set object 6 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 7 polygon from 3.2400000000, 0 to 3.2400000000, f(3.2400000000) to 3.2800000000, f(3.2800000000) to 3.2800000000, 0 to 3.2400000000, 0 
set object 7 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 8 polygon from 3.2800000000, 0 to 3.2800000000, f(3.2800000000) to 3.3200000000, f(3.3200000000) to 3.3200000000, 0 to 3.2800000000, 0 
set object 8 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 9 polygon from 3.3200000000, 0 to 3.3200000000, f(3.3200000000) to 3.3600000000, f(3.3600000000) to 3.3600000000, 0 to 3.3200000000, 0 
set object 9 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 10 polygon from 3.3600000000, 0 to 3.3600000000, f(3.3600000000) to 3.4000000000, f(3.4000000000) to 3.4000000000, 0 to 3.3600000000, 0 
set object 10 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 11 polygon from 3.4000000000, 0 to 3.4000000000, f(3.4000000000) to 3.4400000000, f(3.4400000000) to 3.4400000000, 0 to 3.4000000000, 0 
set object 11 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 12 polygon from 3.4400000000, 0 to 3.4400000000, f(3.4400000000) to 3.4800000000, f(3.4800000000) to 3.4800000000, 0 to 3.4400000000, 0 
set object 12 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 13 polygon from 3.4800000000, 0 to 3.4800000000, f(3.4800000000) to 3.5200000000, f(3.5200000000) to 3.5200000000, 0 to 3.4800000000, 0 
set object 13 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 14 polygon from 3.5200000000, 0 to 3.5200000000, f(3.5200000000) to 3.5600000000, f(3.5600000000) to 3.5600000000, 0 to 3.5200000000, 0 
set object 14 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 15 polygon from 3.5600000000, 0 to 3.5600000000, f(3.5600000000) to 3.6000000000, f(3.6000000000) to 3.6000000000, 0 to 3.5600000000, 0 
set object 15 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 16 polygon from 3.6000000000, 0 to 3.6000000000, f(3.6000000000) to 3.6400000000, f(3.6400000000) to 3.6400000000, 0 to 3.6000000000, 0 
set object 16 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 17 polygon from 3.6400000000, 0 to 3.6400000000, f(3.6400000000) to 3.6800000000, f(3.6800000000) to 3.6800000000, 0 to 3.6400000000, 0 
set object 17 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 18 polygon from 3.6800000000, 0 to 3.6800000000, f(3.6800000000) to 3.7200000000, f(3.7200000000) to 3.7200000000, 0 to 3.6800000000, 0 
set object 18 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 19 polygon from 3.7200000000, 0 to 3.7200000000, f(3.7200000000) to 3.7600000000, f(3.7600000000) to 3.7600000000, 0 to 3.7200000000, 0 
set object 19 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 20 polygon from 3.7600000000, 0 to 3.7600000000, f(3.7600000000) to 3.8000000000, f(3.8000000000) to 3.8000000000, 0 to 3.7600000000, 0 
set object 20 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 21 polygon from 3.8000000000, 0 to 3.8000000000, f(3.8000000000) to 3.8400000000, f(3.8400000000) to 3.8400000000, 0 to 3.8000000000, 0 
set object 21 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 22 polygon from 3.8400000000, 0 to 3.8400000000, f(3.8400000000) to 3.8800000000, f(3.8800000000) to 3.8800000000, 0 to 3.8400000000, 0 
set object 22 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 23 polygon from 3.8800000000, 0 to 3.8800000000, f(3.8800000000) to 3.9200000000, f(3.9200000000) to 3.9200000000, 0 to 3.8800000000, 0 
set object 23 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 24 polygon from 3.9200000000, 0 to 3.9200000000, f(3.9200000000) to 3.9600000000, f(3.9600000000) to 3.9600000000, 0 to 3.9200000000, 0 
set object 24 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 25 polygon from 3.9600000000, 0 to 3.9600000000, f(3.9600000000) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.9600000000, 0 
set object 25 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
