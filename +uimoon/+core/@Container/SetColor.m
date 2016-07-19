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

if nargin == 2 && isa(varargin{1},'uimoon.utils.Color')
    % Color class
    color_ = varargin{1};
elseif nargin == 2 && isa(varargin{1},'char')
    color_ = hex2rgb(varargin{1});
elseif nargin == 4 % obj + rgb
    % RGB vals
    color_ = uimoon.utils.Color(varargin{1},varargin{2},varargin{3});
end

try
    set(obj.hUI,'Color',color_.RGB);
catch %#ok
    set(obj.hUI,'Background',color_.RGB);
end

    function c = hex2rgb(cstr)
        if strcmp(cstr(1),'#')
            cstr(1)= '';
        end
        RED = hex2dec(cstr(1:2));
        GREEN = hex2dec(cstr(3:4));
        BLUE = hex2dec(cstr(5:6));
%         c = [RED GREEN BLUE]/255;
        c = uimoon.utils.Color(RED/255,GREEN/255,BLUE/255);
    end
obj.Color = color_;
end