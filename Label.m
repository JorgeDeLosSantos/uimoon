classdef Label < Component
    % Label class
    
    properties
        
    end
    
    methods
        function obj = Label(str)
            obj.hComp = uicontrol('style','text',...
                'String',str,...
                obj.DEFAULT_PROPERTIES{:}); % Default properties
            obj.str_ = str;
        end
    end
    
end

