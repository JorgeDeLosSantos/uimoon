function DemoEditorPane
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Demo Editor Pane', [400,300]);
app.Center();
bx = BoxLayout('h',2);
txt = ['<html><center><h1>Hello world!!!</h1><br>&alpha+&beta=&gamma',...
    '<p color=#FF0000>Red Text</p>',...
    '<br> <p color=#0000FF>Blue Text</p></center></html>'];
ep = EditorPane(txt);
bx.Add(ep,1);
app.SetLayout(bx);
end