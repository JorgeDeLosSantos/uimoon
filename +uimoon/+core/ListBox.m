classdef ListBox < uimoon.core.Component
    % ListBox
    
    properties
    end
    
    methods
        function obj = ListBox(str)
            obj.hUI = uicontrol('Style','listbox',...
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

