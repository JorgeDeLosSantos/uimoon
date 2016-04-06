classdef ComboBox < Component
    % ComboBox
    
    properties
        
    end
    
    methods
        function obj = ComboBox(str)
            obj.hComp = uicontrol('Style','popupmenu',...
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

