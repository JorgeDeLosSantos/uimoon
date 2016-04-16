function MiniCalc
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*
import uimoon.utils.*

app = Frame('Mini-Calc',[250 150]);
app.SetLayout('v',5); % Set main layout
app.Center()

p1 = Panel(); 
p2 = Panel();
p3 = Panel();

app.Add(p1,1/3);
app.Add(p2,1/3);
app.Add(p3,1/3);

% Labels and TextFields
lb1 = Label('# 1');
lb2 = Label('# 2');
num1 = TextField();
num2 = TextField();

p1.Add(lb1, 1/3); % Add controls to Panel p1
p1.Add(num1, 2/3);
p2.Add(lb2, 1/3); % Add controls to Panel p2
p2.Add(num2, 2/3);

p1.SetLayout('horizontal',5);
p2.SetLayout('horizontal',5);

% Buttons
bt1 = Button('+');
bt2 = Button('-');
bt3 = Button('*');
bt4 = Button('/');

% Changing fonts for buttons
for bt=[bt1,bt2,bt3,bt4]
    bt.SetFont(Font('Arial',16,'bold'));
end

p3.Add(bt1, 1/4); % Add buttons to panel p3
p3.Add(bt2, 1/4);
p3.Add(bt3, 1/4);
p3.Add(bt4, 1/4);
p3.SetLayout('horizontal',2); % Set layout for p3, horizontal and two controls

bt1.SetCallback(@calcular_fcn); % Set callback for buttons 
bt2.SetCallback(@calcular_fcn);
bt3.SetCallback(@calcular_fcn);
bt4.SetCallback(@calcular_fcn);

    function calcular_fcn(~,~,obj)
        a = num1.GetText(); % Get value of "num1" Label
        b = num2.GetText(); % Get value of "num2" Label
        oper = obj.GetText(); % Get the operator of current Button clicked
        uimoon.core.MessageBox(['Output = ',num2str(eval([a,oper,b]))],'uimoon');
    end

end