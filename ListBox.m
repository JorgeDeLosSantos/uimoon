classdef ListBox < Component
    % ListBox
    
    properties
    end
    
    methods
        function obj = ListBox(str)
            obj.hComp = uicontrol('Style','listbox',...
                'String',str);
            obj.str_ = str;
        end
        
        function r = GetCurrentText(obj)
            all_str = get(obj.hComp,'String');
            k = get(obj.hComp,'Value');
            r = all_str{k};
        end
    end
    
end

