classdef StaticBitmap < Component
    % StaticBitmap
    
    properties
        hBitmap;
    end
    
    methods
        function obj = StaticBitmap(img)
            obj.hComp = uipanel('BackgroundColor','w',...
                'Units','Pixels');
            p_pos = get(obj.hComp,'Position');
            obj.hBitmap = axes('Parent',obj.hComp,...
                'NextPlot','Replace',...
                'XLim',[0 p_pos(3)],...
                'YLim',[0 p_pos(4)],...
                'XTick',[],'YTick',[],...
                'Visible','off',...
                'Position',[0 0 1 1]);
            img = imresize(img,[p_pos(4) p_pos(3)]);
            imshow(img,'Parent',obj.hBitmap);
        end
    end
    
end

