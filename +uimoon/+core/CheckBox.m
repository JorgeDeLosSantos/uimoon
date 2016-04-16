classdef CheckBox < uimoon.core.Component
    % Component
    %
    %
    
    properties
        value_;
    end
    
    methods
        function obj = CheckBox(string,value)
            obj.hUI = uicontrol('Style','Checkbox',...
                'String',string,...
                'Value',value,...
                obj.DEFAULT_PROPERTIES{:});
            obj.str_ = string;
        end
    end
    
end

