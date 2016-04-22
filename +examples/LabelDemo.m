function LabelDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*
import uimoon.utils.*

app = Frame('Label Demo',[200 100]);
lab1 = Label('One Label');
lab2 = Label('Other label');
lab1.SetColor(Color.RED); % Using Color class 
lab2.SetColor('#00fafa'); % Using hexadecimal value
lab2.SetFont(Font('Arial',14,'bold'));
bx = BoxLayout('h',2);
bx.Add(lab1, 2/3);
bx.Add(lab2, 1/3);
app.SetLayout(bx);
end