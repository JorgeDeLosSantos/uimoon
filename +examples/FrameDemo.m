function FrameDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
app = Frame('App');
app.Centre(true)
app.Resize(false);
app.SetColor(rand(1,3));
app.SetTitle('Example');
app.SetIcon('images/icono.png');
end