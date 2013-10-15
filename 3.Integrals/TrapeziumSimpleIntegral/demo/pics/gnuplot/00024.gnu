set terminal png size 1024,768
set output "pngs/00024.png" 
set title "N = 24, error = 0.0057536258" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.0416666667, f(3.0416666667) to 3.0416666667, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.0416666667, 0 to 3.0416666667, f(3.0416666667) to 3.0833333333, f(3.0833333333) to 3.0833333333, 0 to 3.0416666667, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.0833333333, 0 to 3.0833333333, f(3.0833333333) to 3.1250000000, f(3.1250000000) to 3.1250000000, 0 to 3.0833333333, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.1250000000, 0 to 3.1250000000, f(3.1250000000) to 3.1666666667, f(3.1666666667) to 3.1666666667, 0 to 3.1250000000, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.1666666667, 0 to 3.1666666667, f(3.1666666667) to 3.2083333333, f(3.2083333333) to 3.2083333333, 0 to 3.1666666667, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 6 polygon from 3.2083333333, 0 to 3.2083333333, f(3.2083333333) to 3.2500000000, f(3.2500000000) to 3.2500000000, 0 to 3.2083333333, 0 
set object 6 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 7 polygon from 3.2500000000, 0 to 3.2500000000, f(3.2500000000) to 3.2916666667, f(3.2916666667) to 3.2916666667, 0 to 3.2500000000, 0 
set object 7 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 8 polygon from 3.2916666667, 0 to 3.2916666667, f(3.2916666667) to 3.3333333333, f(3.3333333333) to 3.3333333333, 0 to 3.2916666667, 0 
set object 8 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 9 polygon from 3.3333333333, 0 to 3.3333333333, f(3.3333333333) to 3.3750000000, f(3.3750000000) to 3.3750000000, 0 to 3.3333333333, 0 
set object 9 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 10 polygon from 3.3750000000, 0 to 3.3750000000, f(3.3750000000) to 3.4166666667, f(3.4166666667) to 3.4166666667, 0 to 3.3750000000, 0 
set object 10 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 11 polygon from 3.4166666667, 0 to 3.4166666667, f(3.4166666667) to 3.4583333333, f(3.4583333333) to 3.4583333333, 0 to 3.4166666667, 0 
set object 11 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 12 polygon from 3.4583333333, 0 to 3.4583333333, f(3.4583333333) to 3.5000000000, f(3.5000000000) to 3.5000000000, 0 to 3.4583333333, 0 
set object 12 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 13 polygon from 3.5000000000, 0 to 3.5000000000, f(3.5000000000) to 3.5416666667, f(3.5416666667) to 3.5416666667, 0 to 3.5000000000, 0 
set object 13 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 14 polygon from 3.5416666667, 0 to 3.5416666667, f(3.5416666667) to 3.5833333333, f(3.5833333333) to 3.5833333333, 0 to 3.5416666667, 0 
set object 14 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 15 polygon from 3.5833333333, 0 to 3.5833333333, f(3.5833333333) to 3.6250000000, f(3.6250000000) to 3.6250000000, 0 to 3.5833333333, 0 
set object 15 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 16 polygon from 3.6250000000, 0 to 3.6250000000, f(3.6250000000) to 3.6666666667, f(3.6666666667) to 3.6666666667, 0 to 3.6250000000, 0 
set object 16 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 17 polygon from 3.6666666667, 0 to 3.6666666667, f(3.6666666667) to 3.7083333333, f(3.7083333333) to 3.7083333333, 0 to 3.6666666667, 0 
set object 17 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 18 polygon from 3.7083333333, 0 to 3.7083333333, f(3.7083333333) to 3.7500000000, f(3.7500000000) to 3.7500000000, 0 to 3.7083333333, 0 
set object 18 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 19 polygon from 3.7500000000, 0 to 3.7500000000, f(3.7500000000) to 3.7916666667, f(3.7916666667) to 3.7916666667, 0 to 3.7500000000, 0 
set object 19 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 20 polygon from 3.7916666667, 0 to 3.7916666667, f(3.7916666667) to 3.8333333333, f(3.8333333333) to 3.8333333333, 0 to 3.7916666667, 0 
set object 20 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 21 polygon from 3.8333333333, 0 to 3.8333333333, f(3.8333333333) to 3.8750000000, f(3.8750000000) to 3.8750000000, 0 to 3.8333333333, 0 
set object 21 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 22 polygon from 3.8750000000, 0 to 3.8750000000, f(3.8750000000) to 3.9166666667, f(3.9166666667) to 3.9166666667, 0 to 3.8750000000, 0 
set object 22 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 23 polygon from 3.9166666667, 0 to 3.9166666667, f(3.9166666667) to 3.9583333333, f(3.9583333333) to 3.9583333333, 0 to 3.9166666667, 0 
set object 23 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 24 polygon from 3.9583333333, 0 to 3.9583333333, f(3.9583333333) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.9583333333, 0 
set object 24 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
