function DrawRect(obj,x,y,width,height,color)
% Axes.DrawRect
% 
%
if nargin < 6
	color = 'k'; % Negro Default
end
set(obj.hUI,'Units','Pixels');
XData = [x x+width x+width x x];
YData = [y y y+height y+height y];
hRect = line(XData,YData);
set(hRect,'Color',color,'Parent',obj.hEUI);
end