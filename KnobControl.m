classdef KnobControl < handle
    
    % KnobControl
    
    properties
        hAx;
        hCircle;
        hFill;
        min_;
        max_;
        value_;
    end
    
    methods
        function obj = KnobControl(min,max,value)
            obj.min_ = min;
            obj.max_ = max;
            obj.value_ = value;
            obj.initComponents();
        end
        
        function initComponents(obj)
            obj.hAx = axes('Units','Pixels',...
                'Position',[30 30 80 80],...
                'Visible','off',...
                'Color','r');
            t = linspace(0,2*pi);
            X = cos(t);
            Y = sin(t);
            obj.hCircle = line(X,Y);
            obj.hFill = fill(X,Y,ones(1,3)*0.9);
            set(obj.hAx,'Visible','off');
        end
    end
    
end

