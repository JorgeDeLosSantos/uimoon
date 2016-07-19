classdef Container < hgsetget
    % Container > Base class for all containers objects
    %
    %
    %
    
    properties (Access = public)
        hUI; % Handles for container object
        Title; % Title for container
        Size; % Size of the container
        Color; % Background Color
        Width; % Width
        Height; % Height
        Proportion; % Self-proportion
        Children; % Children of this container
    end
    
    methods
        function obj = Container()
            obj.Children = {};
        end
        
        function r = IsTemporal(obj)
            tag_of = get(obj.hUI, 'Tag');
            if strcmpi(tag_of,'temporal')
                r = true;
            else
                r = false;
            end
        end
    end
    
end

