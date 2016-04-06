function RadioButtonsDemo2
app = Frame('Radio Button Demo 2');
rb = RadioButtonMenu('Seno | Coseno | Tangente');
rb.SetSelectionChange(@change_fcn);
ax = Axes();
ax.Plot2D(NaN,NaN);
app.Add(rb);

    function change_fcn(~,~)
        curr_str = rb.GetCurrentText();
        ax.Clear(); % Clear axes
        if strcmp(curr_str,'Seno')
            X = linspace(0,10);
            Y = sin(X);
            ax.Plot2D(X,Y);
        elseif strcmp(curr_str,'Coseno')
            X = linspace(0,10);
            Y = cos(X);
            ax.Plot2D(X,Y);
        elseif strcmp(curr_str,'Tangente')
            X = linspace(0,10);
            Y = tan(X);
            ax.Plot2D(X,Y);
        end
    end
end