classdef RadioButtonMenu < uimoon.core.Component
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
                    error('String no v�lido');
                end
            end
            obj.str_ = str;
            obj.hComp = uibuttongroup();
            NEL = length(str);
            for i=1:NEL
                uicontrol('Parent',obj.hComp,...
                    'Style','RadioButton',...
                    'String',str{i},...
                    'Units','Normalized',...
                    'Position',[0 (i-1)*1/NEL 1 1/NEL]);
            end
        end
        
        function SetSelectionChange(obj,fun)
            set(obj.hComp,'SelectionChangeFcn',fun);
        end
        
        function c_txt = GetCurrentText(obj)
            hObj = get(obj.hComp,'SelectedObject');
            c_txt = get(hObj,'String');
        end
    end
end