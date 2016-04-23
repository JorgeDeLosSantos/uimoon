% Quick Test UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*
import uimoon.utils.*

app = Frame('Layout Demo');
app.SetSize(400,300);
% 
% 
bx = BoxLayout('v', 5);
bx1 = GridLayout(2,2,1);

bx.Add(Button('A'), 0.2);
app.SetLayout(bx);
app.SetLayout(bx1);

disp(app.GetChildren())