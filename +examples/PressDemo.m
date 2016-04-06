function PressDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
app = Frame('App 1');
app.SetButtonDown(@bt_down);

    function bt_down(~,~)
        disp('Pressed..');
    end
end