function RadioButtonsDemo2
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Radio Button Demo 2');
app.SetSize(500,250);
bx = BoxLayout('h',2);
rb = RadioButtonMenu('Sine | Cosine | Tangent');
rb.SetSelectionChange(@change_fcn);
ax = Axes();
ax.Plot(NaN,NaN);
bx.Add(rb,1/4);
bx.Add(ax,3/4);
app.SetLayout(bx);

    function change_fcn(~,~)
        curr_str = rb.GetCurrentText();
        ax.Clear(); % Clear axes
        if strcmp(curr_str,'Sine')
            X = linspace(0,10);
            Y = sin(X);
            ax.Plot(X,Y);
        elseif strcmp(curr_str,'Cosine')
            X = linspace(0,10);
            Y = cos(X);
            ax.Plot(X,Y);
        elseif strcmp(curr_str,'Tangent')
            X = linspace(0,10);
            Y = tan(X);
            ax.Plot(X,Y);
        end
        ax.SetGrid(true);
    end
end