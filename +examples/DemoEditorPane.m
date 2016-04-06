function DemoEditorPane
app = Frame('Demo Editor Pane');
app.Centre(1);
app.SetLayout('vertical',5);
src = ['<html><center><h1>Hola mundo</h1><br>&alpha+&beta=&gamma',...
    '<p color=#FF0000>Texto rojo</p>',...
    '<br> <p color=#0000FF>Texto azul</p></center></html>'];
ep = EditorPane(src);
app.Add(ep);
end