function DrawLine(obj,x,y,width,height,color)

if nargin < 6
    color = 'k'; % Default: Negro
end

XData = linspace(x,x+width);
YData = linspace(y,y+height);
hLine = line(XData,YData);
set(hLine,'Parent',obj.hUI,...
    'Color',color);
% Embedded UI -> Units: Pixels, for save aspect ratio.
set(obj.hUI,'Units','Pixels');
set(obj.hUI,'DataAspectRatio',ones(1,3));

axpos = get(obj.hUI, 'Position');
set(obj.hUI, 'XLim', [0 axpos(3)]);
set(obj.hUI, 'YLim', [0 axpos(4)]);

end