function DrawCircle(obj,cx,cy,r,color)

if nargin < 5
    color = 'k'; % Default: Negro
end

% get(obj.hComp,'Position');
TData = linspace(0,2*pi);
XData = r*cos(TData) + cx;
YData = r*sin(TData) + cy;
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