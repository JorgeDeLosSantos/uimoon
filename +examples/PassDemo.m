function PassDemo
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
        else
            warndlg('Contrase�a incorrecta, intente nuevamente');
        end
    end
end