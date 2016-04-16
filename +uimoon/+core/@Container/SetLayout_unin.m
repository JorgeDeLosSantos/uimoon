function SetLayout(obj,layout)
% Container/SetLayout
%
% Configura, de forma automática, la distribución de los
% controles gráficos dentro de un objeto Container.
%
% LAYOUTS DISPONIBLES:
%
%         'vertical'
%         'horizontal'
%         'grid'
%
% ARGUMENTOS VARIABLES (VARARGIN)
% Para el caso 'vertical' y 'horizontal' habrá de pasarse
% como argumento extra el espacio de separación en pixeles
% entre cada uno de los elementos, de lo contrario se tomará
% el valor de 5px por default.
%
% Para el tipo 'grid' deben especificarse el espacio de separación,
% el número de filas y el número de columnas. Es 'estrictamente'
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