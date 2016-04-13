function FrameDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('App');
app.Center()
app.Resize(false);
app.SetLayout('g',1,4,2);
app.SetColor('#f0f0f0');
app.SetTitle('Example');
app.SetIcon('+examples/images/icon.png');
end