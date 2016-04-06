classdef Slider < Component
    %SLIDER Class
    
    properties
        max_;
        min_;
        value_;
    end
    
    methods
        function obj = Slider(min,max,value)
            obj.hComp = uicontrol('Style','Slider',...
                'Min',min,'Max',max,'Value',value);
            obj.value_ = value;
            obj.min_ = min;
            obj.max_ = max;
        end
        
        function val = GetValue(obj)
            val = get(obj.hComp,'Value');
        end
        
        function SetValue(obj,value)
            set(obj.hComp,'Value',value);
        end
    end 
end

