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


cte_ = load('private/constants.mat');

if length(varargin) == 1
    if isa(varargin{1},'char')
        color_ = hex2rgb(varargin{1});
        set(obj.hComp,'BackGroundColor',color_);
    else
        try
            set(obj.hComp,'BackGroundColor',varargin{1});
        catch
            error(ERR_INVALID_INPUTS); % ##### ON REV
        end
    end
else
    % Scalar values
    RED=varargin{1};
    GREEN=varargin{2};
    BLUE=varargin{3};
    set(obj.hComp,'BackgroundColor',[RED GREEN BLUE]);
end

% warndlg('Método en revisión ...');

    function c = hex2rgb(cstr)
        if strcmp(cstr(1),'#')
            cstr(1)= '';
        end
        RED = hex2dec(cstr(1:2));
        GREEN = hex2dec(cstr(3:4));
        BLUE = hex2dec(cstr(5:6));
        c = [RED GREEN BLUE]/255;
    end

end