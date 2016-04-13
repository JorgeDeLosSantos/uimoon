classdef Color < handle
    % Color
    %
    %
    
    properties
        R;
        G;
        B;
        RGB;
        HEX;
    end
    
    methods
        function obj = Color(varargin)
            if nargin==3 % RGB components
                obj.RGB = [varargin{1},varargin{2},varargin{3}];
                obj.R = varargin{1};
                obj.G = varargin{2};
                obj.B = varargin{3};
            elseif nargin==1 && ischar(varargin{1})
                obj.RGB = 0;
            end
        end
        
        function disp(obj)
            fprintf('%s(rgb=[%g,%g,%g])\n\n',class(obj),obj.R,obj.G,obj.B)
        end
    end
    
    methods (Static=true)
        function rgb = hex2rgb(hex)
            hex = strrep(hex, '#', '');
            assert(length(hex)==6, 'Invalid hexadecimal value');
            r = hex2dec(hex(1:2));
            g = hex2dec(hex(3:4));
            b = hex2dec(hex(5:6));
            rgb = [r,g,b]/255; % Normalized
        end
        function r = RED; r = uimoon.utils.Color(1,0,0); end
        function r = GREEN; r = uimoon.utils.Color(0,1,0); end
        function r = BLUE; r = uimoon.utils.Color(0,0,1); end
        function r = YELLOW; r = uimoon.utils.Color(1,1,0); end
        function r = WHITE; r = uimoon.utils.Color(1,1,1); end
        function r = BLACK; r = uimoon.utils.Color(0,0,0); end
        function r = MAGENTA; r = uimoon.utils.Color(1,0,1); end
    end
end

