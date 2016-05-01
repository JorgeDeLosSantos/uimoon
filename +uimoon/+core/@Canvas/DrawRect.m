function DrawRect(obj,x,y,width,height,color)
% Axes.DrawRect
% 
%
if nargin < 6
	color = 'k'; % Black default
end
set(obj.hUI,'Units','Pixels');
XData = [x x+width x+width x x];
YData = [y y y+height y+height y];
hRect = line(XData,YData);
set(hRect,'Color',color,...
    'Parent',obj.hEUI);
% Embedded UI -> Units: Pixels, for save aspect ratio.
set(obj.hEUI,'Units','Pixels');
set(obj.hEUI,'DataAspectRatio',ones(1,3));
% For layout 
set(obj.hUI,'Units','Normalized');
end