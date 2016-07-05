classdef Component < hgsetget
    % Component
    
    
    properties
        hUI;
        String;
        Size;
        Color;
        Width;
        Height;
        Parent;
        Proportion;
    end
    
    properties (Constant)
        DEFAULT_PROPERTIES = {'Visible','off',...
            'Tag', 'uimoon'};
        DEFAULT_PARENT = gcf();
    end
    
    methods
        function r = IsTemporal(obj)
            % Check if this object is temporal
            % Only for development proposals
            tag_of = get(obj.hUI, 'Tag');
            if strcmpi(tag_of,'temporal')
                r = true;
            else
                r = false;
            end
        end
    end
    
end

