function DrawPoint(obj,x,y,color)
% Draw a point on this canvas object
%
if nargin < 4
    color = 'k'; % Default: Black
end

set(obj.hUI,'Units','Pixels');
% Data for Point
XData = x; % X-Coord
YData = y; % Y-Coord
hLine = line(XData,YData);
set(hLine,'Parent',obj.hEUI,...
    'Color',color,...
    'Marker','.',...
    'MarkerSize',1);
% Embedded UI -> Units: Pixels, for save aspect ratio.
set(obj.hEUI,'Units','Pixels');
set(obj.hEUI,'DataAspectRatio',ones(1,3));
% For layout 
set(obj.hUI,'Units','Normalized');
end