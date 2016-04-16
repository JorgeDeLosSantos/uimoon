% Quick Test UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*
import uimoon.utils.*

app = Frame('Layout Demo');
app.SetSize(400,300);
app.SetLayout('h',2); % 3 rows, 3 columns

app.Add(Button('1'),0.5);
app.Add(Button('2'),0.3);
app.Add(Button('3'),0.2);
