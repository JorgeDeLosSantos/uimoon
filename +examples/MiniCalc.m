function MiniCalc
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Mini Calculadora',[250 150]);
app.SetLayout('v',2); % Set main layout: grid. 5 rows and 3 columns
app.Center()
p1 = Panel(); 
p2 = Panel();
p3 = Panel();
app.AddMany(p1,p2,p3); % Add many panels to Frame (main app)

% Labels and TextFields
lb1 = Label('# 1');
lb2 = Label('# 2');
num1 = TextField();
num2 = TextField();

p1.AddMany(lb1,num1); % Add controls to Panel p1
p2.AddMany(lb2,num2); % Add controls to Panel p2

p1.SetLayout('horizontal',5);
p2.SetLayout('horizontal',5);

% Buttons
bt1 = Button('+');
bt2 = Button('-');
bt3 = Button('*');
bt4 = Button('/');

p3.AddMany(bt1,bt2,bt3,bt4); % Add buttons to panel p3
p3.SetLayout('horizontal',2); % Set layout for p3, horizontal and two controls

bt1.SetCallback(@calcular_fcn); % Set callback for buttons 
bt2.SetCallback(@calcular_fcn);
bt3.SetCallback(@calcular_fcn);
bt4.SetCallback(@calcular_fcn);

    function calcular_fcn(~,~,obj)
        import uimoon.core.*
        a = num1.GetText(); % Get value of "num1" Label
        b = num2.GetText(); % Get value of "num2" Label
        oper = obj.GetText(); % Get the operator of current Button clicked
        MessageBox(['Resultado = ',num2str(eval([a,oper,b]))],'GUIOOD');
    end

end