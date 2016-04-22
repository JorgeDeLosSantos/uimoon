function PassDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Pass Demo',[200 80]);
bx = BoxLayout('v',10);
pw = PasswordField();
bt = Button('Go!!!');
bt.SetCallback(@verificar);
bx.Add(pw,0.5);
bx.Add(bt,0.5);
app.SetLayout(bx);

    function verificar(varargin)
        import uimoon.core.*
        passw_real = '123';
        passw_intro = pw.GetPassword();
        if strcmp(passw_real,passw_intro)
            MessageBox('Correct password','UIMOON Demo','info');
            app.Close()
        else
            MessageBox('Invalid password, try again','UIMOON Demo','error');
        end
    end
end