function StaticBitmapDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Static Bitmap Demo', [400,200]);
X1 = uint8(rand(250)*255);
bmp1 = StaticBitmap(X1);
bmp2 = StaticBitmap(X1*0.5);
bmp3 = StaticBitmap(X1*1.5);
app.Add(bmp1, 1/3);
app.Add(bmp2, 1/3);
app.Add(bmp3, 1/3);
end