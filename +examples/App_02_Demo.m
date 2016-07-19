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
bxctrl = BoxLayout('h',2);

% Axes
ax = Axes();
ax.Plot(NaN,NaN);
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
        ax.Plot(x,y);
    end

    function setgrid(~,~,obj)
        ax.SetGrid(obj.GetValue());
    end
end