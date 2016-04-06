function MiniCalc
% MiniCalc / Demo for GUIOOD Toolbox
% 
% Author: Jorge De Los Santos
% Version: 0.1.0
% E-mail: delossantosmfq@gmail.com
% License: BSD License

app = Frame('Mini Calculadora',[220 100]);
app.SetLayout('grid',5,3,1); % Set main layout: grid. 5 rows and 3 columns
p1 = Panel(); 
p2 = Panel();
p3 = Panel();
app.AddMany(p1,p2,p3); % Add many panels to Frame (main app)

% Labels and TextFields
lb1 = Label('# 1');
lb2 = Label('# 2');
num1 = TextField();
num2 = TextField();

p1.AddMany(num1,lb1); % Add controls to Panel p1
p2.AddMany(num2,lb2); % Add controls to Panel p2

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
        a = num1.GetText(); % Get value of "num1" Label
        b = num2.GetText(); % Get value of "num2" Label
        oper = obj.GetText(); % Get the operator of current Button clicked
        MessageBox(['Resultado = ',num2str(eval([a,oper,b]))],'GUIOOD');
    end

end