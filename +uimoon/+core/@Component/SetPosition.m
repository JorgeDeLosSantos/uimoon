function SetPosition(obj,xcoord,ycoord)
% Component/SetPosition
%
% Modifica la posici�n de un componente gr�fico
% 

old_pos = get(obj.hComp,'Position');
set(obj.hComp,'Position',[xcoord ycoord old_pos(3) old_pos(4)]);
end