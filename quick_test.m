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
bx = BoxLayout('v',1);
bx.Add(Button('A'),0.2);
p2 = Panel();
bx.Add(p2, 0.5);
app.SetLayout(bx);

hl = GridLayout(2,2,1);
hl.Add(Button('SAS 1'));
hl.Add(Button('SAS 2'));
hl.Add(Button('SAS 3'));
hl.AddSpace(0.1);
p2.SetLayout(hl);
