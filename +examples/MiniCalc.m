function MiniCalc
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*
import uimoon.utils.*

app = Frame('Mini-Calc',[250 150]);
app.Center()
% Layouts
bx = BoxLayout('v',5); % Main Layout
bxp1 = BoxLayout('h',5);
bxp2 = BoxLayout('h',5);
bxp3 = BoxLayout('h',5);

p1 = Panel(); 
p2 = Panel();
p3 = Panel();

bx.Add(p1,1/3);
bx.Add(p2,1/3);
bx.Add(p3,1/3);

% Labels and TextFields
lb1 = Label('# 1');
lb2 = Label('# 2');
num1 = TextField();
num2 = TextField();

bxp1.Add(lb1, 1/3); % Add controls to Panel p1
bxp1.Add(num1, 2/3);
bxp2.Add(lb2, 1/3); % Add controls to Panel p2
bxp2.Add(num2, 2/3);

p1.SetLayout(bxp1);
p2.SetLayout(bxp2);

% Buttons
bt1 = Button('+');
bt2 = Button('-');
bt3 = Button('*');
bt4 = Button('/');

% Changing fonts and add buttons
for bt=[bt1,bt2,bt3,bt4]
    bt.SetFont(Font('Arial',16,'bold'));
    bxp3.Add(bt, 1/4);
end

p3.SetLayout(bxp3); % Set layout for p3, horizontal and two controls
app.SetLayout(bx);

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