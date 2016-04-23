%% Demos for UIMOON 0.1.0
%
% <index.html *Index*>
%
%% 1. Mini Application Demo
%
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

% Layouts
bxv = BoxLayout('v',1);
bxh1 = BoxLayout('h',2);
bxh2 = BoxLayout('h',2);
bxh3 = BoxLayout('h',2);
bxh4 = BoxLayout('h',2);

bxv.Add(bxh1,0.2);
bxv.Add(bxh2,0.2);
bxv.Add(bxh3,0.2);
bxv.AddSpace(0.1);
bxv.Add(bxh4,0.2);

lb1 = Label('Name');
txt1 = TextField('');
bxh1.Add(lb1,0.3);
bxh1.Add(txt1,0.7);

lb2 = Label('E-mail');
txt2 = TextField('');
bxh2.Add(lb2,0.3);
bxh2.Add(txt2,0.7);

lb3 = Label('Address');
txt3 = TextField('');
bxh3.Add(lb3,0.3);
bxh3.Add(txt3,0.7);

ok_bt = Button('OK');
cancel_bt = Button('Cancel');
bxh4.AddSpace(0.1);
bxh4.Add(ok_bt,0.4);
bxh4.Add(cancel_bt,0.4);

% Set Layouts
app.SetLayout(bxv);

% Callbacks
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

%
%% 2. Plotting App Demo
%
%
function App_02_Demo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('App',[400,300]);
app.Center();

% Layouts
bx = BoxLayout('v',2);
bxctrl = BoxLayout('h',1);

% Axes
ax = Axes();
ax.Plot2D(NaN,NaN);
bx.Add(ax,0.9);

% Controls
bx.Add(bxctrl,0.1);

lbl = Label('f(x)');
fun = TextField();
chk = CheckBox('Grid',false);
bt = Button('Plot');

% Add controls to Panel
bxctrl.Add(lbl,0.1);
bxctrl.Add(fun,0.5);
bxctrl.Add(chk,0.125);
bxctrl.Add(bt,0.275);

% Set layouts
app.SetLayout(bx);

% Set button callback
bt.SetCallback(@plotting);
chk.SetCallback(@setgrid);

    function plotting(varargin)
        fx = fun.GetText();
        x = linspace(0,10,1000);
        y = eval(fx);
        ax.Plot2D(x,y);
    end

    function setgrid(~,~,obj)
        ax.SetGrid(obj.GetValue());
    end
end

