function TableOfMoonControls
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*
import uimoon.utils.*

app = Frame('UIMOON Controls',[300 400]);
headers = {'UIMOON control','MATLAB Control'};
data = {
    'AboutDialog','';
    'Axes','Axes';
    'Buttton','PushButton';
    'Canvas','';
    'CheckBox','CheckBox';
    'ComboBox','PopUpMenu';
    'ContextMenu','uicontextmenu';
    'Dialog','';
    'EditorPanel','';
    'Frame','Figure';
    'Label','StaticText';
    'ListBox','ListBox';
    'Menu','uimenu';
    'MenuBar','uimenu';
    'MessageBox','msgbox';
    'Panel','uipanel';
    'PasswordField','';
    'RadioBox','RadioGroup';
    'Slider','Slider';
    'Spinner','';
    'StaticBitmap','';
    'Table','uitable';
    'TextField','EditText'
    };
tab = Table(data,headers);
tab.SetColor([0.6,0.8,0.9;
              0.8,0.9,0.8]);
tab.SetFont(Font('Arial',9,'bold'));
bx = BoxLayout('h',2);
bx.Add(tab,1);
app.SetLayout(bx);

opts.PageTitle = 'Ctrls';
opts.TableTitle = 'UIMOON Controls';
opts.BgColor = '#fafafa';
opts.FontName = 'Arial';
opts.BorderWidth = '2';
tab.ToHTML('uimoon_ctrls.html',opts);
end