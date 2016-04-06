classdef Spinner < handle
    
    
    properties
        hComp;
        hText;
        hUp;
        hDown;
        value_;
    end
    
    methods
        function obj = Spinner(value)
            if nargin < 1
                value = 0;
            end
            obj.hComp = uipanel('BorderType','None');
            obj.hText = uicontrol(obj.hComp,'style','edit',...
                'String',num2str(value),...
                'Units','Normalized',...
                'Position',[0 0 0.8 1]);
            obj.hUp = uicontrol(obj.hComp,'style','push',...
                'String','+',...
                'Units','Normalized',...
                'Position',[0.8 0.5 0.2 0.5],...
                'Callback',@obj.ChangeValue,...
                'Backg',ones(1,3)*0.8);
            obj.hDown = uicontrol(obj.hComp,'style','push',...
                'String','-',...
                'Units','Normalized',...
                'Position',[0.8 0 0.2 0.5],...
                'Callback',@obj.ChangeValue,...
                'BackG',ones(1,3)*0.8);
            
            obj.value_ = value;
        end
        
        function ChangeValue(obj,src,~)
            upstr = '+';
            downstr = '-'; % unused <>
            
            if strcmp(get(src,'String'),upstr)
                obj.value_ = obj.value_ + 1;
                set(obj.hText,'String',num2str(obj.value_));
            else
                obj.value_ = obj.value_ - 1;
                set(obj.hText,'String',num2str(obj.value_));
            end
        end
    end
    
end

