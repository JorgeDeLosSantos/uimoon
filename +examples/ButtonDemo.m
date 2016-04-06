function ButtonDemo
app = Frame('Button Demo');
bt = Button('Botón');
bt.SetCallback(@bt_callback);
app.Add(bt);

    function bt_callback(varargin)
        bt.SetColor('#ff00ff');
    end
end