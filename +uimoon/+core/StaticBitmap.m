classdef StaticBitmap < uimoon.core.Component
    % StaticBitmap
    
    properties
        hUICont; % Self-Container
    end
    
    methods
        function obj = StaticBitmap(img)
            obj.hUICont = uipanel('BackgroundColor','w',...
                'Units','Pixels');
            p_pos = get(obj.hUICont,'Position');
            obj.hUI = axes('Parent',obj.hUICont,...
                'NextPlot','Replace',...
                'XLim',[0 p_pos(3)],...
                'YLim',[0 p_pos(4)],...
                'XTick',[],'YTick',[],...
                'Visible','off',...
                'Position',[0 0 1 1]);
            img = imresize(img, [p_pos(4) p_pos(3)]);
            imshow(img,'Parent',obj.hUI);
        end
    end
    
end

