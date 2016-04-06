function RadioButtonsDemo2
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Radio Button Demo 2');
rb = RadioButtonMenu('Sine | Cosine | Tangent');
rb.SetSelectionChange(@change_fcn);
ax = Axes();
ax.Plot2D(NaN,NaN);
app.Add(rb);

    function change_fcn(~,~)
        curr_str = rb.GetCurrentText();
        ax.Clear(); % Clear axes
        if strcmp(curr_str,'Sine')
            X = linspace(0,10);
            Y = sin(X);
            ax.Plot2D(X,Y);
        elseif strcmp(curr_str,'Cosine')
            X = linspace(0,10);
            Y = cos(X);
            ax.Plot2D(X,Y);
        elseif strcmp(curr_str,'Tangent')
            X = linspace(0,10);
            Y = tan(X);
            ax.Plot2D(X,Y);
        end
    end
end