function DialogDemos
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*;

MessageBox('This is a info dialog','uimoon','info');
MessageBox('This is a warn dialog','uimoon','warn');
MessageBox('This is a error dialog','uimoon','error');
MessageBox('This is a custom dialog','uimoon','custom','+examples/images/icon.png');

end