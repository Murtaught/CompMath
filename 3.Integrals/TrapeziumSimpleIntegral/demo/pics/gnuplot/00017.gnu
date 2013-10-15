set terminal png size 1024,768
set output "pngs/00017.png" 
set title "N = 17, error = 0.0114674342" 
set xrange [3.0000000000 : 4.0000000000]
set xzeroaxis ls -1 
set yzeroaxis ls -1 
set grid 
f(x) = exp(x)*sin(x)
set style fill  
set obj 1 polygon from 3.0000000000, 0 to 3.0000000000, f(3.0000000000) to 3.0588235294, f(3.0588235294) to 3.0588235294, 0 to 3.0000000000, 0 
set object 1 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 2 polygon from 3.0588235294, 0 to 3.0588235294, f(3.0588235294) to 3.1176470588, f(3.1176470588) to 3.1176470588, 0 to 3.0588235294, 0 
set object 2 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 3 polygon from 3.1176470588, 0 to 3.1176470588, f(3.1176470588) to 3.1764705882, f(3.1764705882) to 3.1764705882, 0 to 3.1176470588, 0 
set object 3 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 4 polygon from 3.1764705882, 0 to 3.1764705882, f(3.1764705882) to 3.2352941176, f(3.2352941176) to 3.2352941176, 0 to 3.1764705882, 0 
set object 4 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 5 polygon from 3.2352941176, 0 to 3.2352941176, f(3.2352941176) to 3.2941176471, f(3.2941176471) to 3.2941176471, 0 to 3.2352941176, 0 
set object 5 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 6 polygon from 3.2941176471, 0 to 3.2941176471, f(3.2941176471) to 3.3529411765, f(3.3529411765) to 3.3529411765, 0 to 3.2941176471, 0 
set object 6 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 7 polygon from 3.3529411765, 0 to 3.3529411765, f(3.3529411765) to 3.4117647059, f(3.4117647059) to 3.4117647059, 0 to 3.3529411765, 0 
set object 7 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 8 polygon from 3.4117647059, 0 to 3.4117647059, f(3.4117647059) to 3.4705882353, f(3.4705882353) to 3.4705882353, 0 to 3.4117647059, 0 
set object 8 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 9 polygon from 3.4705882353, 0 to 3.4705882353, f(3.4705882353) to 3.5294117647, f(3.5294117647) to 3.5294117647, 0 to 3.4705882353, 0 
set object 9 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 10 polygon from 3.5294117647, 0 to 3.5294117647, f(3.5294117647) to 3.5882352941, f(3.5882352941) to 3.5882352941, 0 to 3.5294117647, 0 
set object 10 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 11 polygon from 3.5882352941, 0 to 3.5882352941, f(3.5882352941) to 3.6470588235, f(3.6470588235) to 3.6470588235, 0 to 3.5882352941, 0 
set object 11 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 12 polygon from 3.6470588235, 0 to 3.6470588235, f(3.6470588235) to 3.7058823529, f(3.7058823529) to 3.7058823529, 0 to 3.6470588235, 0 
set object 12 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 13 polygon from 3.7058823529, 0 to 3.7058823529, f(3.7058823529) to 3.7647058824, f(3.7647058824) to 3.7647058824, 0 to 3.7058823529, 0 
set object 13 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 14 polygon from 3.7647058824, 0 to 3.7647058824, f(3.7647058824) to 3.8235294118, f(3.8235294118) to 3.8235294118, 0 to 3.7647058824, 0 
set object 14 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 15 polygon from 3.8235294118, 0 to 3.8235294118, f(3.8235294118) to 3.8823529412, f(3.8823529412) to 3.8823529412, 0 to 3.8235294118, 0 
set object 15 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 16 polygon from 3.8823529412, 0 to 3.8823529412, f(3.8823529412) to 3.9411764706, f(3.9411764706) to 3.9411764706, 0 to 3.8823529412, 0 
set object 16 fc rgb "orange" fillstyle solid 1.0 border lt 4 
set obj 17 polygon from 3.9411764706, 0 to 3.9411764706, f(3.9411764706) to 4.0000000000, f(4.0000000000) to 4.0000000000, 0 to 3.9411764706, 0 
set object 17 fc rgb "orange" fillstyle solid 1.0 border lt 4 
plot f(x) lt 1 
