function SetSize(obj,width,height)
% Layout/SetSize 
%
% Establece el tama�o de un objeto de la clase Container o de
% una sub-clase de la anterior.
% 
% SINTAXIS:
%
%              obj.SetSize(ancho,alto);
%
% EJEMPLO:
%               app = Frame('App 1');
%               app.SetSize(600,400);
%
% 

validateattributes(width,{'numeric'},{'positive'});
validateattributes(height,{'numeric'},{'positive'});

old_pos = get(obj.hUI,'Position');
set(obj.hUI,'Position',[old_pos(1) old_pos(2) width height]);

end