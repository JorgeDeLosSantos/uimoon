function AxesDemo
app = Frame('Demo Axes',[600,300]);
app.SetLayout('horizontal',10);

% Axes
ax1 = Axes();
% ax1.SetColor([250,200,200]/255);
ax2 = Axes();
% ax2.SetColor([200,250,200]/255);
ax3 = Axes();
% ax3.SetColor([200,200,250]/255);

app.AddMany(ax1,ax2,ax3);

x = linspace(0,10);
y = cos(x);
ax1.Sphere(10,2,1,3);
ax2.Plot2D(x,y,'g');
ax3.Plot2D(x,y,'b');
ax3.SetGrid(true);

end