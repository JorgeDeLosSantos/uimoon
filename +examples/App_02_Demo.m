function App_02_Demo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('App',[400,300]);
app.Center();
app.SetLayout('v',2);

% Axes
ax = Axes();
ax.Plot2D(NaN,NaN);
app.Add(ax,0.9);

% Controls
pctrl = Panel();
pctrl.SetLayout('h',1);
app.Add(pctrl,0.1);

lbl = Label('f(x)');
fun = TextField();
chk = CheckBox('Grid',false);
bt = Button('Plot');

% Add controls to Panel
pctrl.Add(lbl,0.1);
pctrl.Add(fun,0.5);
pctrl.Add(chk,0.125);
pctrl.Add(bt,0.275);

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