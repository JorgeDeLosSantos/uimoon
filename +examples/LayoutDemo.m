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

lyp1 = GridLayout(2,2,2);
lyp2 = BoxLayout('v',2);

bx.Add(lyp1, 1/3);
bx.Add(lyp2, 2/3);

lyp1.Add(Button('1'));
lyp2.Add(Label('01'), 1/2);
lyp2.Add(Label('02'), 1/8);
lyp2.Add(Label('03'), 1/8);
lyp2.Add(Label('04'), 1/8);
lyp2.Add(Label('05'), 1/8);

% Set Layout
app.SetLayout(bx);
end