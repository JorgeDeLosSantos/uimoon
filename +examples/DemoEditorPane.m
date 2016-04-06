function DemoEditorPane
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
app = Frame('Demo Editor Pane', [400,300]);
app.Center();
app.SetLayout('vertical',5);
src = ['<html><center><h1>Hello world!!!</h1><br>&alpha+&beta=&gamma',...
    '<p color=#FF0000>Red Text</p>',...
    '<br> <p color=#0000FF>Blue Text</p></center></html>'];
ep = EditorPane(src);
app.Add(ep);
end