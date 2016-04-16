classdef RadioButtonMenu < uimoon.core.Component
    % RadioButtonMenu
    %
    %
    properties
        
    end
    
    methods
        function obj = RadioButtonMenu(str)
            import uimoon.utils.* % Import utils module
            if ~isa(str,'cell')
                try
                    str = String.split(str,'|');
                    for i=1:length(str)
                        str{i} = strtrim(str{i});
                    end
                catch %#ok
                    error('String no válido');
                end
            end
            obj.str_ = str;
            obj.hUI = uibuttongroup();
            NEL = length(str);
            for i=1:NEL
                uicontrol('Parent',obj.hUI,...
                    'Style','RadioButton',...
                    'String',str{i},...
                    'Units','Normalized',...
                    'Position',[0 (i-1)*1/NEL 1 1/NEL]);
            end
        end
        
        function SetSelectionChange(obj,fun)
            set(obj.hUI,'SelectionChangeFcn',fun);
        end
        
        function c_txt = GetCurrentText(obj)
            hObj = get(obj.hUI,'SelectedObject');
            c_txt = get(hObj,'String');
        end
    end
end