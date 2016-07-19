function DrawRect(obj,x,y,width,height,color)
% Axes/DrawRect
% 
%
if nargin < 6
	color = 'k'; % Black default
end

XData = [x x+width x+width x x];
YData = [y y y+height y+height y];
hRect = line(XData,YData);
set(hRect,'Color',color,...
    'Parent',obj.hUI);
% Embedded UI -> Units: Pixels, for save aspect ratio.
set(obj.hUI,'Units','Pixels');
set(obj.hUI,'DataAspectRatio',ones(1,3));
axpos = get(obj.hUI, 'Position');
set(obj.hUI, 'XLim', [0 axpos(3)]);
set(obj.hUI, 'YLim', [0 axpos(4)]);
end