classdef RadioButtonMenu < Component
    properties
    end
    
    methods
        function obj = RadioButtonMenu(str)
            if ~isa(str,'cell')
                try
                    str = String.Split(str,'|');
                    for i=1:length(str)
                        str{i} = strtrim(str{i});
                    end
                catch %#ok<CTCH>
                    error('String no válido');
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