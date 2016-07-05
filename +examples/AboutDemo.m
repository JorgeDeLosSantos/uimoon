function AboutDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('AboutDialog Demo');
app.Center();

m_ayuda = Menu('Help','');
m_ayuda.AddItem(Menu('Help','disp(''UIMOON Toolbox'')'));
m_ayuda.AddItem(Menu('About...',@about));

menu_bar = MenuBar(m_ayuda);
app.SetMenuBar(menu_bar);

    function about(~,~)
        import uimoon.core.AboutDialog
        name_ = 'UIMOON';
        version_ = '0.1.0';
        description_ = 'MATLAB Graphical User Interfaces with Object Oriented Design, inspired in Java and wxPython syntax.';
        author_ = 'Pedro Jorge De Los Santos';
        email_ = 'delossantosmfq@gmail.com';
        web_ = 'jdlsantos.blogspot.mx';
        AboutDialog(name_,version_,description_,author_,email_,web_)
    end
end