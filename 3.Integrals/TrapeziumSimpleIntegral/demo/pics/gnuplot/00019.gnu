set terminal png size 1024,768
set output "pngs/00019.png" 
set title "N = 19, error = 0.0091803005" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.0526315789, f(3.0526315789) to 3.0526315789, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.0526315789, 0 to 3.0526315789, f(3.0526315789) to 3.1052631579, f(3.1052631579) to 3.1052631579, 0 to 3.0526315789, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.1052631579, 0 to 3.1052631579, f(3.1052631579) to 3.1578947368, f(3.1578947368) to 3.1578947368, 0 to 3.1052631579, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.1578947368, 0 to 3.1578947368, f(3.1578947368) to 3.2105263158, f(3.2105263158) to 3.2105263158, 0 to 3.1578947368, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.2105263158, 0 to 3.2105263158, f(3.2105263158) to 3.2631578947, f(3.2631578947) to 3.2631578947, 0 to 3.2105263158, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 6 polygon from 3.2631578947, 0 to 3.2631578947, f(3.2631578947) to 3.3157894737, f(3.3157894737) to 3.3157894737, 0 to 3.2631578947, 0 
set object 6 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 7 polygon from 3.3157894737, 0 to 3.3157894737, f(3.3157894737) to 3.3684210526, f(3.3684210526) to 3.3684210526, 0 to 3.3157894737, 0 
set object 7 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 8 polygon from 3.3684210526, 0 to 3.3684210526, f(3.3684210526) to 3.4210526316, f(3.4210526316) to 3.4210526316, 0 to 3.3684210526, 0 
set object 8 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 9 polygon from 3.4210526316, 0 to 3.4210526316, f(3.4210526316) to 3.4736842105, f(3.4736842105) to 3.4736842105, 0 to 3.4210526316, 0 
set object 9 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 10 polygon from 3.4736842105, 0 to 3.4736842105, f(3.4736842105) to 3.5263157895, f(3.5263157895) to 3.5263157895, 0 to 3.4736842105, 0 
set object 10 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 11 polygon from 3.5263157895, 0 to 3.5263157895, f(3.5263157895) to 3.5789473684, f(3.5789473684) to 3.5789473684, 0 to 3.5263157895, 0 
set object 11 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 12 polygon from 3.5789473684, 0 to 3.5789473684, f(3.5789473684) to 3.6315789474, f(3.6315789474) to 3.6315789474, 0 to 3.5789473684, 0 
set object 12 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 13 polygon from 3.6315789474, 0 to 3.6315789474, f(3.6315789474) to 3.6842105263, f(3.6842105263) to 3.6842105263, 0 to 3.6315789474, 0 
set object 13 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 14 polygon from 3.6842105263, 0 to 3.6842105263, f(3.6842105263) to 3.7368421053, f(3.7368421053) to 3.7368421053, 0 to 3.6842105263, 0 
set object 14 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 15 polygon from 3.7368421053, 0 to 3.7368421053, f(3.7368421053) to 3.7894736842, f(3.7894736842) to 3.7894736842, 0 to 3.7368421053, 0 
set object 15 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 16 polygon from 3.7894736842, 0 to 3.7894736842, f(3.7894736842) to 3.8421052632, f(3.8421052632) to 3.8421052632, 0 to 3.7894736842, 0 
set object 16 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 17 polygon from 3.8421052632, 0 to 3.8421052632, f(3.8421052632) to 3.8947368421, f(3.8947368421) to 3.8947368421, 0 to 3.8421052632, 0 
set object 17 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 18 polygon from 3.8947368421, 0 to 3.8947368421, f(3.8947368421) to 3.9473684211, f(3.9473684211) to 3.9473684211, 0 to 3.8947368421, 0 
set object 18 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 19 polygon from 3.9473684211, 0 to 3.9473684211, f(3.9473684211) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.9473684211, 0 
set object 19 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
