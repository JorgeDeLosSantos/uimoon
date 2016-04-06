function SetColor(obj,varargin)
% Container.SetColor
%
% Modifica el color de fondo de un objeto de la clase
% Container.
%
% SINTAXIS:
%
%           obj.SetColor(red,green,blue);
%           obj.SetColor(Color.color);
%           obj.SetColor([red green blue]);
%
% Donde red, green, y blue, son valores entre 0 y 1, correspondientes
% al modelo de color RGB. La segunda forma corresponde al uso de los
% atributos constantes de la clase Color, que se integra en este mismo
% Toolbox.
%
%
% EJEMPLOS:
%           app = Frame('App');
%           app.SetColor(0,0,1);
%           app.SetColor(Color.BLUE);
%           app.SetColor([0 0 1]);
%
%

if length(varargin{1}) > 1
    % util Color properties
    color_ = varargin{1};
    try 
        set(obj.hCont,'Color',color_);
    catch
        set(obj.hCont,'BackG',color_);
    end
else
    % Scalar values
    RED=varargin{1};
    GREEN=varargin{2};
    BLUE=varargin{3};
    try
        set(obj.hCont,'Color',[RED GREEN BLUE]);
    catch
        set(obj.hCont,'BackG',[RED GREEN BLUE]);
    end
end
end