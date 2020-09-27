function CanvasDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Canvas Demo',[600 300]);
bx = BoxLayout('h',1);

% Canvas
cv1 = Canvas();
cv2 = Canvas();
cv3 = Canvas();
cv4 = Canvas();
bx.Add(cv1, 1/4);
bx.Add(cv2, 1/4);
bx.Add(cv3, 1/4);
bx.Add(cv4, 1/4);

% Draw ...
for i=1:10
    cv1.DrawLine(0,0,180,i*20,'r');
    cv2.DrawCircle(200,120,i*10,'g');
    cv3.DrawRect(i*20,i*20,20,20,'b');
    cv4.DrawPoint(i*20,i*10,'m');
end

cv2.SetColor('#dadafe'); % Color for canvas cv2
app.SetLayout(bx);

end