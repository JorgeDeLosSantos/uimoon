function PassDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
app = Frame('Pass Demo',[200 80]);
app.SetLayout('v',10);
pw = PasswordField();
bt = Button('Go!!!');
bt.SetCallback(@verificar);
app.AddMany(pw,bt);

    function verificar(varargin)
        passw_real = '123';
        passw_intro = pw.GetPassword();
        if strcmp(passw_real,passw_intro)
            helpdlg('Contrase�a correcta');
            app.Close()
        else
            warndlg('Contrase�a incorrecta, intente nuevamente');
        end
    end
end