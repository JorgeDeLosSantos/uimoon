function SetLayout(obj,layout)
% Container/SetLayout
%
% Configura, de forma autom�tica, la distribuci�n de los
% controles gr�ficos dentro de un objeto Container.
%
% LAYOUTS DISPONIBLES:
%
%         'vertical'
%         'horizontal'
%         'grid'
%
% ARGUMENTOS VARIABLES (VARARGIN)
% Para el caso 'vertical' y 'horizontal' habr� de pasarse
% como argumento extra el espacio de separaci�n en pixeles
% entre cada uno de los elementos, de lo contrario se tomar�
% el valor de 5px por default.
%
% Para el tipo 'grid' deben especificarse el espacio de separaci�n,
% el n�mero de filas y el n�mero de columnas. Es 'estrictamente'
% necesario el colocar todos los argumentos.
%
% SINTAXIS:
%
%           obj.SetLayout('vertical');
%           obj.SetLayout('vertical',espaciado);
%           obj.SetLayout('grid',espaciado,filas,columnas);
%
% EJEMPLOS:
%
%           app1 = Frame('App 1');
%           app1.SetLayout('grid',10,2,2);
%           ............................
%           app2 = Frame('App 2');
%           app2.SetLayout('vertical',4);
%
%

set(layout.hUI, 'Parent', obj.hCont);
end