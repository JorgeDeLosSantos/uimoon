function ButtonDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Button Demo');
bt = Button('Botón');
bt.SetCallback(@bt_callback);
bx = BoxLayout('v',1);
bx.AddSpace(0.2); % for "centered" button
bx.Add(bt,0.6);
app.SetLayout(bx);

    function bt_callback(varargin)
        bt.SetColor('#77FFFF'); % Also Hex color
    end
end