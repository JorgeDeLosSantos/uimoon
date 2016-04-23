function SetLayout(obj,layout)
% Container/SetLayout Set Layout for a container object
% 
% Input arguments:
%
%      layout  -   A Layout class
%

set(layout.hUI, 'Parent', obj.hUI);
obj.AddChildren(layout);
set(layout.hUI, 'Units', 'Normalized', 'Position',[0 0 1 1]);
set(layout.hUI, 'Visible', 'on');
layout.Draw(); % Redraw()
end