function Table2HTMLDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Table Export Demo');
opts.PageTitle = 'Example 01'; % Title of HTML page
opts.TableTitle = '<font color="#0000FF">Some data</font>'; 
opts.BgColor = '#FAFAFA'; % Background of table
opts.FontName = 'DejaVu Serif';
opts.BorderWidth = '1';
tab = Table(rand(3),{'a','b','c'}); % Create table with random data
app.Add(tab);
tab.ToHTML('table_example.html',opts); % Make HTML table with options
end