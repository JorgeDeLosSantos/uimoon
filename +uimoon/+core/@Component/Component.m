classdef Component < hgsetget
    % Component
    
    
    properties
        hUI;
        str_;
        size_;
        color_;
        width_;
        height_;
        parent_;
        proportion_;
    end
    
    properties (Constant)
        DEFAULT_PROPERTIES = {'Visible',   'off',...
                              'Tag',       'uimoon'};
    end
    
    methods
    end
    
end

