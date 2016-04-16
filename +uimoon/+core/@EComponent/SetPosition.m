function SetPosition(obj,xcoord,ycoord)
% Component/SetPosition
%
% Updated position
% 

old_pos = get(obj.hUI, 'Position');
set(obj.hUI, 'Position', [xcoord ycoord old_pos(3) old_pos(4)]);
end