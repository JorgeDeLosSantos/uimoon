classdef AppData < handle
    % Finder class
    
    properties
    end
    
    methods (Static=true)
        function s = SumAppData(hArray,data)
            M = zeros(1,length(hArray));
            for k = 1:length(hArray)
                M(k) = getappdata(hArray,data);
            end
            s = sum(M);
        end
    end
end

