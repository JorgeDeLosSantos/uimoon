function LabelDemo% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*
import uimoon.utils.*

app = Frame('Label Demo',[200 100]);
app.SetLayout('horizontal',2);
lab1 = Label('One Label');
lab2 = Label('Other label');
lab1.SetColor(Color.RED);
app.Add(lab1);
app.Add(lab2);
end