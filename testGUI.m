% function testGUI
app = Frame('Table Export Demo');
m1 = Menu('Archivo','');
m2 = Menu('Edición','');
m11 = Menu('Abrir','');
m1.AddItem(m11);
m11.AddItem(Menu('HHHHH',''));
mb = MenuBar(m1,m2);
app.SetMenuBar(mb);
% end
