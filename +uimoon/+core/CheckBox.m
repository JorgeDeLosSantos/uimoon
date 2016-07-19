classdef CheckBox < uimoon.core.Component
    % Component
    %
    %
    
    properties
        Value;
    end
    
    methods
        function obj = CheckBox(string,value)
            obj.hUI = uicontrol('Style','Checkbox',...
                'String',string,...
                'Value',value,...
                obj.DEFAULT_PROPERTIES{:});
            obj.String = string;
            obj.Value = value;
        end
        
        function v = GetValue(obj)
            v = get(obj.hUI,'Value');
        end
    end
    
end

