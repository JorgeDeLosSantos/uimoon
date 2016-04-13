function SetColor(obj,varargin)
% Container/SetColor
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




if length(varargin{1}) > 1 && ~isa(varargin{1},'uimoon.utils.Color')
    % Color class
    color_ = varargin{1};
elseif nargin==3
    % RGB vals
    color_ = uimoon.utils.Color(varargin{1},varargin{2},varargin{3});
end

try
    set(obj.hCont,'Color',color_.rgb_);
catch %#ok
    set(obj.hCont,'Background',color_.rgb_);
end

end