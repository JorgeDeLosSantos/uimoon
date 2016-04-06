function RadioButtonsDemo
app = Frame('Radio Button Demo');
rb = RadioButtonMenu('Seno | Coseno | Tangente');
rb.SetSelectionChange(@change_fcn);
app.Add(rb);

    function change_fcn(~,~)
        curr_str = rb.GetCurrentText();
        fprintf('Has presionado %s\n',curr_str);
    end
end