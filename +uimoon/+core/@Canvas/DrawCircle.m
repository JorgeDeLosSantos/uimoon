function DrawCircle(obj,cx,cy,r,color)

if nargin < 5
    color = 'k'; % Default: Negro
end
set(obj.hUI,'Units','Pixels');
% get(obj.hComp,'Position');
TData = linspace(0,2*pi);
XData = r*cos(TData) + cx;
YData = r*sin(TData) + cy;
hLine = line(XData,YData);
axis('square');
set(hLine,'Parent',obj.hEUI,'Color',color);
set(obj.hUI,'Units','Normalized');
end