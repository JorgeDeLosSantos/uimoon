function SeleccionaGrafica
app = Frame('Radio Button Demo');
rb = RadioButtonMenu('Seno | Coseno | Tangente');
rb.SetSelectionChange(@change_fcn);
ax = Axes();
app.Add(rb);
app.Add(ax);
app.SetLayout('horizontal');

    function change_fcn(~,event)
        ax.Clear();
        curr_str = get(event.NewValue,'String');
        x = linspace(0,10);
        funcs = {'Seno',sin(x);
                 'Coseno',cos(x);
                 'Tangente',tan(x)};
        for i=1:size(funcs,1)
            if strcmp(funcs{i,1},curr_str)
                y = funcs{i,2};
                break;
            end
        end
        ax.Plot2D(x,y);
    end
end