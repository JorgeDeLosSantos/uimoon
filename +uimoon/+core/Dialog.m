classdef Dialog < hgsetget
    % Component
    
    properties
        hUI;
    end
    
    methods
        function disp(obj)
            fprintf('%s\n',class(obj));
        end
    end
    
end

