classdef CheckBox < Component
    % Component
    %
    %
    
    properties
        value_;
    end
    
    methods
        function obj = CheckBox(string,value)
            obj.hComp = uicontrol('Style','Checkbox',...
                'String',string,...
                'Value',value,...
                obj.DEFAULT_PROPERTIES{:});
            obj.str_ = string;
        end
    end
    
end

