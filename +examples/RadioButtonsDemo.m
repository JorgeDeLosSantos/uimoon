function RadioButtonsDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Radio Button Demo');
rb = RadioButtonMenu('Sine | Cosine | Tangent');
rb.SetSelectionChange(@change_fcn);
bx = BoxLayout('h',2);
bx.Add(rb, 1/2);
app.SetLayout(bx);

    function change_fcn(~,~)
        curr_str = rb.GetCurrentText();
        fprintf('You have pressed %s\n',curr_str);
    end
end