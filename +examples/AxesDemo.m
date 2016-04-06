function AxesDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Demo Axes',[800,300]);
app.Center(); % Center Frame
app.SetLayout('horizontal',10);

% Axes
ax1 = Axes();
ax2 = Axes();
ax3 = Axes();

app.AddMany(ax1,ax2,ax3);

x = linspace(0,10);
y = cos(x);
ax1.Sphere(10,2,1,3);
ax1.SetLabels('x','y','z');
ax2.Plot2D(x,y,'g');
ax2.SetTitle('Plotting with UIMOON');
ax3.Plot2D(x,y,'b');
ax3.SetGrid(true);
ax3.SetColor([0,250,200]/255);
end