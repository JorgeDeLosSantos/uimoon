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
app.SetColor();
app.SetTitle('Example');
app.SetIcon('+examples/images/icon.png');
end