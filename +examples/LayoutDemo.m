% function LayoutDemo
import uimoon.core.*
import uimoon.utils.*

app = Frame('Layout Demo');
app.SetSize(400,300);
app.SetLayout('horizontal'); % 3 rows, 3 columns

p1 = Panel();
p2 = Panel();
p1.SetLayout('g',2,2,2);
p2.SetLayout('v');

app.AddMany(p1,p2);

p1.AddMany(Button('1'),Button('2'),Button('3'),Button('4'));
p2.AddMany(Label('Label 01'),Label('Label 02'),Label('Label 03'),Label('Label 04'));
