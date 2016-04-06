classdef Panel < Container
    % Panel
    
    properties
    end
    
    methods
        function obj = Panel(size)
            if nargin < 1
                size = [100 100];
            end
            obj.hCont = uipanel('units','pixels',...
                'Position',[0 0 size(1) size(2)],...
                'BorderType','None');
            obj.size_ = size;
            obj.width_ = size(1);
            obj.height_ = size(2);
        end
    end
    
end

