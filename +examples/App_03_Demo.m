function App_03_Demo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
% A simple calculator
%
import uimoon.core.*

app = Frame('App',[200,300]);
app.Center();

% Layouts
bx = BoxLayout('v', 1);
gr = GridLayout(4,4,1);

labels = {'7','8','9','/',...
    '4','5','6','*',...
    '1','2','3','-',...
    '0','.','+','='};

% Buttons
for ii = 1:length(labels)
    cb = Button(labels{ii});
    cb.SetCallback(@calc);
    gr.Add(cb, 1);
end

% Screen
screen = TextField();
bx.Add(screen, 0.15);

bx.Add(gr, 0.85);
app.SetLayout(bx);

    function calc(src,~,~)
        global cnum ceval
        
        pres= get(src,'str');
        if ~any(strcmp(pres,{'*','/','+','-','='}))
            cnum=[cnum,pres];
            screen.SetText(cnum);
        elseif any(strcmp(pres,{'+','-','*','/'}))
            ceval=[ceval,cnum,pres];
            cnum='';
        elseif strcmp(pres,'=')
            ceval=[ceval,cnum];
            screen.SetText(str2num(ceval));
            ceval=screen.GetText();
            cnum='';
        end
    end

    function ac(~,~)
        global cnum ceval
        cnum='';
        ceval='';
        set(pantalla,'str','0');
    end

    function off(~,~)
        clearvars('-global','cnum','ceval');
        set(pantalla,'str','');
    end

end