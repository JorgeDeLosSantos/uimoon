function TableDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
app = Frame('Table Demo',[400 200]);
app.SetLayout('grid',1,1,1);
tab = Table(rand(4),{'A','B','C','D'});
tab.SetColor([0.7,0.8,0.9;0.8,0.9,0.8]);
app.Add(tab);
end