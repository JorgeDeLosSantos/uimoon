function MenuDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Menu Demo');
m_archivo = Menu('File','');
m_archivo.AddItem(Menu('Open',''));
m_archivo.AddItem(Menu('Exit',@close_this));

m_herr = Menu('Tools','');
sub1 = Menu('Opción 1','');
sub11 = Menu('Option 1.1','');
sub12 = Menu('Option 1.2','');
sub2 = Menu('Option 2','');
sub1.AddItem(sub11);
sub1.AddItem(sub12);
m_herr.AddItem(sub1);
m_herr.AddItem(sub2);

m_ayuda = Menu('Help','');
m_ayuda.AddItem(Menu('Help',''));
m_ayuda.AddItem(Menu('About...','disp(''(c) 2016 Jorge De Los Santos'')'));

menu_bar = MenuBar(m_archivo,m_herr,m_ayuda);
app.SetMenuBar(menu_bar);

    function close_this(~,~)
        app.Close();
    end
end