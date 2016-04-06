function Table2HTMLDemo
app = Frame('Table Export Demo');
opts.PageTitle = 'Ejemplo'; % Title of HTML page
opts.TableTitle = '<font color="#0000FF">Datos exportados</font>'; 
opts.BgColor = '#ffddff'; % Background of table
opts.FontName = 'DejaVu Sans Mono'; 
opts.BorderWidth = '2';
tab = Table(rand(3),{'a','b','c'}); % Create table with random data
app.Add(tab);
tab.ToHTML('ejemplo_tabla.html',opts); % Make HTML table with options
end