classdef Axes < uimoon.core.EComponent
    % AXES
    
    properties
    end
    
    methods
        function obj = Axes()
            obj.hUI = uipanel('BackgroundColor','w',...
                'Units','Pixels');
            p_pos = get(obj.hUI,'Position');
            obj.hUIE = axes('Parent',obj.hUI,...
                'NextPlot','Replace',...
                'XLim',[0 p_pos(3)],...
                'YLim',[0 p_pos(4)]);
        end
    end
    
end

