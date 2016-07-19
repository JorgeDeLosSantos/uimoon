classdef Axes < uimoon.core.Component
    % AXES
    
    properties
    end
    
    methods
        function obj = Axes()
            obj.hUI = axes('Parent',obj.DEFAULT_PARENT,...
                'NextPlot','Replace',...
                'XLim',[0 1],...
                'YLim',[0 1]);
        end
    end
    
end

