set terminal png size 1024,768
set output "pngs/00029.png" 
set title "N = 29, error = 0.0039406522" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.0344827586, f(3.0344827586) to 3.0344827586, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.0344827586, 0 to 3.0344827586, f(3.0344827586) to 3.0689655172, f(3.0689655172) to 3.0689655172, 0 to 3.0344827586, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.0689655172, 0 to 3.0689655172, f(3.0689655172) to 3.1034482759, f(3.1034482759) to 3.1034482759, 0 to 3.0689655172, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.1034482759, 0 to 3.1034482759, f(3.1034482759) to 3.1379310345, f(3.1379310345) to 3.1379310345, 0 to 3.1034482759, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.1379310345, 0 to 3.1379310345, f(3.1379310345) to 3.1724137931, f(3.1724137931) to 3.1724137931, 0 to 3.1379310345, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 6 polygon from 3.1724137931, 0 to 3.1724137931, f(3.1724137931) to 3.2068965517, f(3.2068965517) to 3.2068965517, 0 to 3.1724137931, 0 
set object 6 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 7 polygon from 3.2068965517, 0 to 3.2068965517, f(3.2068965517) to 3.2413793103, f(3.2413793103) to 3.2413793103, 0 to 3.2068965517, 0 
set object 7 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 8 polygon from 3.2413793103, 0 to 3.2413793103, f(3.2413793103) to 3.2758620690, f(3.2758620690) to 3.2758620690, 0 to 3.2413793103, 0 
set object 8 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 9 polygon from 3.2758620690, 0 to 3.2758620690, f(3.2758620690) to 3.3103448276, f(3.3103448276) to 3.3103448276, 0 to 3.2758620690, 0 
set object 9 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 10 polygon from 3.3103448276, 0 to 3.3103448276, f(3.3103448276) to 3.3448275862, f(3.3448275862) to 3.3448275862, 0 to 3.3103448276, 0 
set object 10 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 11 polygon from 3.3448275862, 0 to 3.3448275862, f(3.3448275862) to 3.3793103448, f(3.3793103448) to 3.3793103448, 0 to 3.3448275862, 0 
set object 11 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 12 polygon from 3.3793103448, 0 to 3.3793103448, f(3.3793103448) to 3.4137931034, f(3.4137931034) to 3.4137931034, 0 to 3.3793103448, 0 
set object 12 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 13 polygon from 3.4137931034, 0 to 3.4137931034, f(3.4137931034) to 3.4482758621, f(3.4482758621) to 3.4482758621, 0 to 3.4137931034, 0 
set object 13 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 14 polygon from 3.4482758621, 0 to 3.4482758621, f(3.4482758621) to 3.4827586207, f(3.4827586207) to 3.4827586207, 0 to 3.4482758621, 0 
set object 14 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 15 polygon from 3.4827586207, 0 to 3.4827586207, f(3.4827586207) to 3.5172413793, f(3.5172413793) to 3.5172413793, 0 to 3.4827586207, 0 
set object 15 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 16 polygon from 3.5172413793, 0 to 3.5172413793, f(3.5172413793) to 3.5517241379, f(3.5517241379) to 3.5517241379, 0 to 3.5172413793, 0 
set object 16 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 17 polygon from 3.5517241379, 0 to 3.5517241379, f(3.5517241379) to 3.5862068966, f(3.5862068966) to 3.5862068966, 0 to 3.5517241379, 0 
set object 17 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 18 polygon from 3.5862068966, 0 to 3.5862068966, f(3.5862068966) to 3.6206896552, f(3.6206896552) to 3.6206896552, 0 to 3.5862068966, 0 
set object 18 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 19 polygon from 3.6206896552, 0 to 3.6206896552, f(3.6206896552) to 3.6551724138, f(3.6551724138) to 3.6551724138, 0 to 3.6206896552, 0 
set object 19 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 20 polygon from 3.6551724138, 0 to 3.6551724138, f(3.6551724138) to 3.6896551724, f(3.6896551724) to 3.6896551724, 0 to 3.6551724138, 0 
set object 20 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 21 polygon from 3.6896551724, 0 to 3.6896551724, f(3.6896551724) to 3.7241379310, f(3.7241379310) to 3.7241379310, 0 to 3.6896551724, 0 
set object 21 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 22 polygon from 3.7241379310, 0 to 3.7241379310, f(3.7241379310) to 3.7586206897, f(3.7586206897) to 3.7586206897, 0 to 3.7241379310, 0 
set object 22 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 23 polygon from 3.7586206897, 0 to 3.7586206897, f(3.7586206897) to 3.7931034483, f(3.7931034483) to 3.7931034483, 0 to 3.7586206897, 0 
set object 23 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 24 polygon from 3.7931034483, 0 to 3.7931034483, f(3.7931034483) to 3.8275862069, f(3.8275862069) to 3.8275862069, 0 to 3.7931034483, 0 
set object 24 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 25 polygon from 3.8275862069, 0 to 3.8275862069, f(3.8275862069) to 3.8620689655, f(3.8620689655) to 3.8620689655, 0 to 3.8275862069, 0 
set object 25 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 26 polygon from 3.8620689655, 0 to 3.8620689655, f(3.8620689655) to 3.8965517241, f(3.8965517241) to 3.8965517241, 0 to 3.8620689655, 0 
set object 26 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 27 polygon from 3.8965517241, 0 to 3.8965517241, f(3.8965517241) to 3.9310344828, f(3.9310344828) to 3.9310344828, 0 to 3.8965517241, 0 
set object 27 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 28 polygon from 3.9310344828, 0 to 3.9310344828, f(3.9310344828) to 3.9655172414, f(3.9655172414) to 3.9655172414, 0 to 3.9310344828, 0 
set object 28 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 29 polygon from 3.9655172414, 0 to 3.9655172414, f(3.9655172414) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.9655172414, 0 
set object 29 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
