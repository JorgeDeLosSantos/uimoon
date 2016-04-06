classdef Axes < Component
    % AXES
    
    properties
        hAxes;
    end
    
    methods
        function obj = Axes()
            obj.hComp = uipanel('BackgroundColor','w',...
                'Units','Pixels');
            p_pos = get(obj.hComp,'Position');
            obj.hAxes = axes('Parent',obj.hComp,...
                'NextPlot','Replace',...
                'XLim',[0 p_pos(3)],...
                'YLim',[0 p_pos(4)]);
        end
    end
    
end

