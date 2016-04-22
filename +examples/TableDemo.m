function TableDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*
import uimoon.utils.*

app = Frame('Table Demo',[400 200]);
bx = BoxLayout('h',2);
tab = Table(rand(4),{'A','B','C','D'});
tab.SetColor([0.6,0.8,0.9;
              0.8,0.9,0.8]);
tab.SetFont(Font('Arial',10,'bold'));
bx.Add(tab,1);
app.SetLayout(bx);
end