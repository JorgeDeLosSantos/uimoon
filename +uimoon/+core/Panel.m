classdef Panel < uimoon.core.Container
    % Panel
    
    properties
    end
    
    methods
        function obj = Panel(size)
            if nargin < 1
                size = [100 100];
            end
            obj.hUI = uipanel('units','pixels',...
                'Position',[0 0 size(1) size(2)],...
                'BorderType','None');
            obj.Size = size;
            obj.Width = size(1);
            obj.Height = size(2);
        end
    end
    
end

