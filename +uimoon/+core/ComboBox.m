classdef ComboBox < uimoon.core.Component
    % ComboBox
    
    properties
        
    end
    
    methods
        function obj = ComboBox(str)
            obj.hUI = uicontrol('Style','popupmenu',...
                'String',str);
            obj.str_ = str;
        end
        
        function r = GetCurrentText(obj)
            all_str = get(obj.hUI,'String');
            k = get(obj.hUI,'Value');
            r = all_str{k};
        end
    end
    
end

