function MenuDemo
app = Frame('Menu Demo');
m_archivo = Menu('Archivo','');
m_archivo.AddItem(Menu('Abrir',''));
m_archivo.AddItem(Menu('Salir',''));

m_herr = Menu('Herramientas','');
sub1 = Menu('Opción 1','');
sub11 = Menu('Opción 1.1','');
sub12 = Menu('Opción 1.2','');
sub2 = Menu('Opción 2','');
sub1.AddItem(sub11);
sub1.AddItem(sub12);
m_herr.AddItem(sub1);
m_herr.AddItem(sub2);

m_ayuda = Menu('Ayuda','');
m_ayuda.AddItem(Menu('Ayuda',''));
m_ayuda.AddItem(Menu('Acerca de...','disp(''(c) 2014 Jorge De Los Santos'')'));


menu_bar = MenuBar(m_archivo,m_herr,m_ayuda);
app.SetMenuBar(menu_bar);

end