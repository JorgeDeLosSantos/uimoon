function LayoutDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*
import uimoon.utils.*

app = Frame('Layout Demo');
app.SetSize(400,300);
bx = BoxLayout('h',2);

p1 = Panel();
p2 = Panel();
lyp1 = GridLayout(2,2,2);
lyp2 = BoxLayout('v',2);

bx.Add(p1,1/3);
bx.Add(p2,2/3);

lyp1.AddMany(Button('1'),Button('2'),Button('3'),Button('4'));
lyp2.Add(Label('01'), 1/2);
lyp2.Add(Label('02'), 1/8);
lyp2.Add(Label('03'), 1/8);
lyp2.Add(Label('04'), 1/8);
lyp2.Add(Label('05'), 1/8);

% Set Layouts
p1.SetLayout(lyp1);
p2.SetLayout(lyp2);
app.SetLayout(bx);
end