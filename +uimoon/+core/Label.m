classdef Label < uimoon.core.Component
    % Label class
    
    properties
        
    end
    
    methods
        function obj = Label(str)
            obj.hUI = uicontrol('style','text',...
                'String',str,...
                obj.DEFAULT_PROPERTIES{:}); % Default properties
            obj.str_ = str;
        end
    end
    
end

