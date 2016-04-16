function SetColor(obj,varargin)
% Component/SetColor
%
% Ejemplo:
%         obj.SetColor(Color.RED);
%   or
%         obj.SetColor(0,1/2,1/3);
%
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
obj.color_ = color_;
end