function PressDemo
app = Frame('App 1');
app.SetButtonDown(@bt_down);

    function bt_down(~,~)
        disp('Presionado');
    end
end