function ButtonDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Button Demo');
bt = Button('Bot�n');
bt.SetCallback(@bt_callback);
app.AddSpace(0.2); % for "centered" button
app.Add(bt,0.6);

    function bt_callback(varargin)
        bt.SetColor('#77FFFF'); % Also Hex color
    end
end