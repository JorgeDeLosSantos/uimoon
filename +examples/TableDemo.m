function TableDemo
app = Frame('Table Demo',[200 200]);
app.SetLayout('v',10);
tab = Table(rand(4),{'A','B','C','D'});
tab.SetColor([0.7,0.8,0.9;0.8,0.9,0.8]);
app.Add(tab);
end