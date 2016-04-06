function SetPosition(obj,xcoord,ycoord)
% Component/SetPosition
%
% Modifica la posición de un componente gráfico
% 

old_pos = get(obj.hComp,'Position');
set(obj.hComp,'Position',[xcoord ycoord old_pos(3) old_pos(4)]);
end