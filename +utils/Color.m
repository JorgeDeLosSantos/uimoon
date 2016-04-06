classdef Color < handle
    % Color 
    %
    %
    
    properties (Constant = true)
        % Constants 
        RED =     [1 0 0];
        GREEN =   [0 1 0];
        BLUE =    [0 0 1];
        YELLOW =  [1 1 0];
        WHITE =   [1 1 1];
        BLACK =   [0 0 0];
        MAGENTA = [1 0 1];
    end
    
    
    methods
        function obj = Color(varargin)
            if nargin==3 % RGB components
                obj = [varargin{1},varargin{2},varargin{3}];
            elseif nargin==1 && ischar(varargin{1})
                obj = hex2rgb(varargin{1});
            end
        end
        function rgb = hex2rgb(obj,hex)
            hex = strrep(hex, '#', '');
            assert(length(hex)==6, 'Invalid hexadecimal value');
            r = hex2dec(hex[1:2]);
            g = hex2dec(hex[3:4]);
            b = hex2dec(hex[5:6]);
            rgb = [r,g,b]/255; % Normalized
        end
    end
    
    methods (Static=true)
    end
end

