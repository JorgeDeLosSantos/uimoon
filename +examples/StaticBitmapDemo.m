function StaticBitmapDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

logo = '+uimoon/+images/uimoon_logo.png';
X = imread(logo);

app = Frame('Static Bitmap Demo', [400,150]);
bmp1 = StaticBitmap(X);
bmp2 = StaticBitmap(X*0.5);
app.Add(bmp1, 1/2);
app.Add(bmp2, 1/2);
end