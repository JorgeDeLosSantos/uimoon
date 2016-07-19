function DrawPoint(obj,x,y,color)
% Draw a point on this canvas object
%
if nargin < 4
    color = 'k'; % Default: Black
end

% Data for Point
XData = x; % X-Coord
YData = y; % Y-Coord
hLine = line(XData,YData);
set(hLine,'Parent',obj.hUI,...
    'Color',color,...
    'Marker','.',...
    'MarkerSize',1);
% Embedded UI -> Units: Pixels, for save aspect ratio.
set(obj.hUI,'Units','Pixels');
set(obj.hUI,'DataAspectRatio',ones(1,3));
axpos = get(obj.hUI, 'Position');
set(obj.hUI, 'XLim', [0 axpos(3)]);
set(obj.hUI, 'YLim', [0 axpos(4)]);

end