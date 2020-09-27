classdef Component < hgsetget
    % Component
    
    properties
        hUI;
        Color;
        Proportion;
        Size;
        Width;
        Height;
        Font;
        
        BackgroundColor;
        BeingDeleted;
        BusyAction;
        ButtonDownFcn;
        Callback;
        CData;
        CreateFcn;
        DeleteFcn;
        Enable;
        Extent;
        FontAngle;
        FontName;
        FontSize;
        FontUnits;
        FontWeight;
        ForegroundColor;
        HandleVisibility;
        HitTest;
        HorizontalAlignment;
        Interruptible;
        KeyPressFcn;
        Max;
        Min;
        Parent;
        Position;
        Selected;
        SelectionHighlight;
        String;
        Tag;
        TooltipString;
        UIContextMenu;
        Units;
        UserData;
        Value;
        Visible;
    end
    
    properties
        DEFAULT_PROPERTIES = {'Visible','off',...
            'Tag', 'uimoon'};
        DEFAULT_PARENT = gcf();
    end
    
    
    methods
        function obj = Component
            set(obj.hUI, 'BackgroundColor', obj.BackgroundColor);
        end
        
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

