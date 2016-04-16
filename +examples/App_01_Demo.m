function App_01_Demo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
%
import uimoon.core.*

app = Frame('App',[300,130]);
app.Center();

app.SetLayout('v',0);

p1 = Panel();
p2 = Panel();
p3 = Panel();
p4 = Panel();

% Layouts for panels
p1.SetLayout('h',2);
p2.SetLayout('h',2);
p3.SetLayout('h',2);
p4.SetLayout('h',2);

app.Add(p1,0.2);
app.Add(p2,0.2);
app.Add(p3,0.2);
app.AddSpace(0.1);
app.Add(p4,0.2);

lb1 = Label('Name');
txt1 = TextField('');
p1.Add(lb1,0.3);
p1.Add(txt1,0.7);

lb2 = Label('E-mail');
txt2 = TextField('');
p2.Add(lb2,0.3);
p2.Add(txt2,0.7);

lb3 = Label('Address');
txt3 = TextField('');
p3.Add(lb3,0.3);
p3.Add(txt3,0.7);

ok_bt = Button('OK');
cancel_bt = Button('Cancel');

p4.AddSpace(0.1);
p4.Add(ok_bt,0.4);
p4.Add(cancel_bt,0.4);

ok_bt.SetCallback(@fun);
cancel_bt.SetCallback(@fun);

    function fun(varargin)
        clicked_button = varargin{3};
        if strcmpi(clicked_button.GetText(),'OK')
            name = txt1.GetText(); %#ok
            email = txt2.GetText(); %#ok
            address = txt3.GetText(); %#ok
            save('user_data.mat','name','email','address');
            uimoon.core.MessageBox('Data saved to user_data.mat','uimoon','info')
        else % Cancel case
            app.Close()
        end
    end
end