classdef Component < handle
    % Component
    
    
    properties
        hComp;
        str_;
        size_;
        color_;
        width_;
        height_;
        parent_;
    end
    
    properties (Constant)
        DEFAULT_PROPERTIES = {'Visible',   'off',...
                              'Tag',       'guiood'};
    end
    
    methods
        function obj = Component
        end
    end
    
end

