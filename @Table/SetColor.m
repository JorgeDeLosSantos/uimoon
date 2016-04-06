function SetColor(obj,color)
% Table/SetColor
% 
% Modifica el color de fondo de la tabla
%  
% Sintaxis:
%
%            obj.SetColor(color);
%
% Argumentos de entrada:
%
%           color    -->    Matriz de 1x3 o 2x3, cuyas filas representan
%                           la combinación de colores de fondo de cada una
%                           de las filas de la Tabla.
% 
% Ejemplo:
%           app = Frame('App');
%           tab = Table(rand(3),{'a','b','c'});
%           tab.SetColor([0.8 0.7 0.8; 0.9 0.6 0.8]);
%           app.Add(tab);
%
%
if ~isequal(size(color,2),3) || size(color,1) > 2
	error('Inserte una matriz de 1x3 o 2x3');
end

set(obj.hTable,'BackgroundColor',color);
end