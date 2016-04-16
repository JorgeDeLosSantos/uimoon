classdef Dialog < hgsetget
    % Component
    
    properties
        hUI;
    end
    
    properties (Constant)
%         DEFAULT_PROPERTIES = {'Visible',   'off',...
%                               'Tag',       'guiood'};
    end
    
    methods
        function disp(obj)
            fprintf('%s\n',class(obj));
        end
    end
    
end

