classdef Container < hgsetget
    % Container > Base class for all containers objects
    %
    %
    %
    
    properties (Access = public)
        hUI; % Handles for container object
        title_; % Title for container
        size_; % Size of the container
        color_; % Background Color
        width_; % Width
        height_; % Height
        proportion_; % Self-proportion
        children_; % Children of this container
    end
    
    methods
        function obj = Container()
            obj.children_ = {};
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

