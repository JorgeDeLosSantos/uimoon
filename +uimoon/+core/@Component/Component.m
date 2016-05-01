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
            'Tag', 'uimoon'};
    end
    
    methods
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

