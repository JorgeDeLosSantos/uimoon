classdef Canvas < uimoon.core.Component
    % CANVAS
    
    properties
    end
    
    methods
        function obj = Canvas()
            obj.hUI = axes('Parent',obj.DEFAULT_PARENT,...
                'NextPlot','Add',...
                'XTick',[],'YTick',[],...
                'Units','Normalized',...
                'Position',[0 0 1 1],...
                'Visible','off');
%                 'XLim',[0 p_pos(3)],...
%                 'YLim',[0 p_pos(4)]);
        end
    end
end

