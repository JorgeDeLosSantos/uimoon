function SetColor(obj,varargin)

if nargin == 3
    RED = varargin{1};
    GREEN = varargin{2};
    BLUE = varargin{3};
    set(obj.hComp,'BackG',[RED GREEN BLUE]);
else
    try
        color = varargin{1};
        set(obj.hComp,'BackG',color);
    catch %#ok
        error('Revise los argumentos de entrada');
    end
end
end