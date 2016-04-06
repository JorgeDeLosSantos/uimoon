function LabelDemo
app = Frame('Label Demo',[200 100]);
app.SetLayout('horizontal',10);
lab1 = Label('Una etiqueta');
lab2 = Label('Otra etiqueta');
% lab1.SetColor(util.Color.RED);
app.Add(lab1);
app.Add(lab2);
end