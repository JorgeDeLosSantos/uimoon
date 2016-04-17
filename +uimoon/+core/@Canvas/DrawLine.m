function DrawLine(obj,x,y,width,height,color)

if nargin < 6
    color = 'k'; % Default: Negro
end
set(obj.hUI,'Units','Pixels');
XData = linspace(x,x+width);
YData = linspace(y,y+height);
hLine = line(XData,YData);
set(hLine,'Parent',obj.hEUI,'Color',color);
end