classdef String < handle
    
    properties
        str_;
    end
    
    methods
        function obj = String(str)
            obj.str_ = str;
        end
    end
    
    methods (Static=true)
        function s = split(cad,delimiter)
            % Split string
            if nargin==1
                % Default delimiter -> Space
                delimiter=' ';
            end
            if isnumeric(cad) % Deprecated
                % Convert numerical inputs to string
                cad=num2str(cad);
            end
            s = regexp(cad,['\',delimiter],'split'); % (0.1.1) --> Rev --> Sust. while loop
        end
        
        function s = ToLower(str)
            % Lower case
            s = lower(str);
        end
        
        function s = ToUpper(str)
            % Upper case
            s = upper(str);
        end
    end
    
end

