classdef Dialog < handle
    % Component
    
    properties
        hDlg;
    end
    
    properties (Constant)
%         DEFAULT_PROPERTIES = {'Visible',   'off',...
%                               'Tag',       'guiood'};
    end
    
    methods
        function obj = Dialog()
        end
        
        function disp(obj)
            fprintf('%s\n',class(obj));
        end
    end
    
end

