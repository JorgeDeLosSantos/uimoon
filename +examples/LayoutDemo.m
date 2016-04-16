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
app.SetLayout('horizontal'); % 3 rows, 3 columns

p1 = Panel();
p2 = Panel();
p1.SetLayout('g',2,2,2);
p2.SetLayout('v',2);

app.Add(p1,1/3);
app.Add(p2,2/3);

p1.AddMany(Button('1'),Button('2'),Button('3'),Button('4'));
p2.Add(Label('01'), 1/2);
p2.Add(Label('02'), 1/8);
p2.Add(Label('03'), 1/8);
p2.Add(Label('04'), 1/8);
p2.Add(Label('05'), 1/8);
end