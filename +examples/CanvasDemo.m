function CanvasDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Canvas Demo',[400 300]);
app.SetLayout('horizontal',5);

% Canvas
cv1 = Canvas();
cv2 = Canvas();
app.Add(cv1, 0.5);
app.Add(cv2, 0.5);

% Draw ...
for i=1:10
    cv1.DrawLine(0,0,180,i*20,'r');
    cv2.DrawCircle(200,100,i*10,'g');
    cv2.DrawRect(10,10,i*10,i*10);
end

cv2.SetColor('#dadafe'); % Color for canvas cv2

end