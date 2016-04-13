function App_01_Demo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('App',[300,120]);
app.Center();

app.SetLayout('g',3,3,2);

lb1 = Label('Name');
txt1 = TextField('');

lb2 = Label('E-mail');
txt2 = TextField('');

lb3 = Label('Address');
txt3 = TextField('');

app.AddMany(lb1,txt1,lb2,txt2,lb3,txt3);

lb1.SetColor(app.GetColor());
lb2.SetColor(app.GetColor());
lb3.SetColor(app.GetColor());
end