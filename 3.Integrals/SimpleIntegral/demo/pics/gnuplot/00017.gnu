set terminal png size 1024,768
set output "pngs/00017.png" 
set title "N = 17, error = 0.0057337171" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style rect fc rgb "orange" fs noborder 
set obj rect from 3.0000000000,0  to 3.0588235294,f(3.0294117647) `
set obj rect from 3.0588235294,0  to 3.1176470588,f(3.0882352941) `
set obj rect from 3.1176470588,0  to 3.1764705882,f(3.1470588235) `
set obj rect from 3.1764705882,0  to 3.2352941176,f(3.2058823529) `
set obj rect from 3.2352941176,0  to 3.2941176471,f(3.2647058824) `
set obj rect from 3.2941176471,0  to 3.3529411765,f(3.3235294118) `
set obj rect from 3.3529411765,0  to 3.4117647059,f(3.3823529412) `
set obj rect from 3.4117647059,0  to 3.4705882353,f(3.4411764706) `
set obj rect from 3.4705882353,0  to 3.5294117647,f(3.5000000000) `
set obj rect from 3.5294117647,0  to 3.5882352941,f(3.5588235294) `
set obj rect from 3.5882352941,0  to 3.6470588235,f(3.6176470588) `
set obj rect from 3.6470588235,0  to 3.7058823529,f(3.6764705882) `
set obj rect from 3.7058823529,0  to 3.7647058824,f(3.7352941176) `
set obj rect from 3.7647058824,0  to 3.8235294118,f(3.7941176471) `
set obj rect from 3.8235294118,0  to 3.8823529412,f(3.8529411765) `
set obj rect from 3.8823529412,0  to 3.9411764706,f(3.9117647059) `
set obj rect from 3.9411764706,0  to 4.0000000000,f(3.9705882353) `
plot f(x) lt 1 
