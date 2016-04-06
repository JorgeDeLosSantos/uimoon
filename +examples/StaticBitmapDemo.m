function StaticBitmapDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('');
X1 = imread('saturn.png');
bmp1 = StaticBitmap(X1);
bmp2 = StaticBitmap(X1);
bmp3 = StaticBitmap(X1);
app.AddMany(bmp1, bmp2, bmp3);
end