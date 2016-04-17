classdef StaticBitmap < uimoon.core.EComponent
    % StaticBitmap
    
    properties
        hUICont; % Self-Container
    end
    
    methods
        function obj = StaticBitmap(img)
            obj.hUI = uipanel('BackgroundColor','w',...
                'Units','Pixels');
            p_pos = get(obj.hUI,'Position');
            obj.hEUI = axes('Parent',obj.hUI,...
                'NextPlot','Replace',...
                'XLim',[0 p_pos(3)],...
                'YLim',[0 p_pos(4)],...
                'XTick',[],'YTick',[],...
                'Visible','off',...
                'Position',[0 0 1 1]);
            img = imresize(img, [p_pos(4) p_pos(3)]);
            imshow(img,'Parent',obj.hEUI);
        end
    end
    
end

