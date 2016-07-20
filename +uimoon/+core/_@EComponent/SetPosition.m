function SetPosition(obj,xcoord,ycoord)
% Component/SetPosition
%
% Updated position
% 

old_pos = get(obj.hPUI, 'Position');
set(obj.hPUI, 'Position', [xcoord ycoord old_pos(3) old_pos(4)]);
end