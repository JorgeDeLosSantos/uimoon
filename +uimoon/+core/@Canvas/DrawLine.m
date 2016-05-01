function DrawLine(obj,x,y,width,height,color)

if nargin < 6
    color = 'k'; % Default: Negro
end
set(obj.hUI,'Units','Pixels');
XData = linspace(x,x+width);
YData = linspace(y,y+height);
hLine = line(XData,YData);
set(hLine,'Parent',obj.hEUI,...
    'Color',color);
% Embedded UI -> Units: Pixels, for save aspect ratio.
set(obj.hEUI,'Units','Pixels');
set(obj.hEUI,'DataAspectRatio',ones(1,3));
% For layout 
set(obj.hUI,'Units','Normalized');
end