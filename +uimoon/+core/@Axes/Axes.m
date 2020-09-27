classdef Axes < uimoon.core.Component
    % Axes;
    
    properties
<<<<<<< HEAD
%         Color;
%         Box;
%         BoxStyle;
%         LineWidth;
%         XAxis;
%         YAxis;
%         ZAxis;
%         XAxisLocation;
%         ZAxisLocation;
%         XColor;
%         YColor;
%         ZColor;
%         XDir;
%         YDir;
%         ZDir;
%         XScale;
%         YScale;
%         ZScale;
%         XLim;
%         YLim;
%         ZLim;
%         XLimMode;
%         YLimMode;
%         ZLimMode;
%         XTick;
%         YTick;
%         ZTick;
%         XTickMode;
%         YTickMode;
%         ZTickMode;
%         XTickLabel;
%         YTickLabel;
%         ZTickLabel;
%         XTickLabelMode;
%         YTickLabelMode;
%         ZTickLabelMode;
%         TickLabelInterpreter;
%         XTickLabelRotation; % For > R2014b 
%         YTickLabelRotation; % For > R2014b
%         ZTickLabelRotation; % For > R2014b
%         XMinorTick;
%         YMinorTick;
%         ZMinorTick;
%         TickLength;
%         TickDir;
%         TickDirMode;
%         XGrid;
%         YGrid;
%         ZGrid;
%         XMinorGrid;
%         YMinorGrid;
%         ZMinorGrid;
%         GridLineStyle;
%         MinorGridLineStyle;
%         GridColor;
%         GridColorMode;
%         MinorGridColor;
%         MinorGridColorMode;
%         GridAlpha;
%         GridAlphaMode;
%         MinorGridAlpha;
%         MinorGridAlphaMode;
%         Layer;
%         FontName;
%         FontSize;
%         FontUnits;
%         FontAngle;
%         FontWeight;
%         TitleFontWeight;
%         FontSmoothing;
%         Title;
%         XLabel;
%         YLabel;
%         ZLabel;
%         ColorOrder;
%         ColorOrderIndex;
%         LineStyleOrder;
%         LineStyleOrderIndex;
%         CLim;
%         CLimMode;
%         ALim;
%         ALimMode;
%         AmbientLightColor;
%         NextPlot;
%         SortMethod;
%         Visible;
%         Clipping;
%         ClippingStyle;
%         Position;
%         TightInset;
%         OuterPosition;
%         ActivePositionProperty;
%         Units;
%         Projection
%         DataAspectRatio;
%         DataAspectRatioMode;
%         PlotBoxAspectRatio;
%         PlotBoxAspectRatioMode;
%         CameraPosition;
%         CameraPositionMode;
%         CameraTarget;
%         CameraTargetMode;
%         CameraUpVector;
%         CameraUpVectorMode;
%         CameraViewAngle;
%         CameraViewAngleMode;
%         View;
%         Type;
%         Tag;
%         UserData;
%         % Parent; % Inherited from Component
%         Children;
%         HandleVisibility;
%         CurrentPoint;
%         ButtonDownFcn;
%         UIContextMenu;
%         Selected;
%         SelectionHighLight;
%         PickableParts;
%         HitTest;
%         Interruptible;
% %         BusyAction;
%         CreateFcn;
%         DeleteFcn;
% %         BeingDeleted;
=======
        Color;
        Box;
        BoxStyle;
        LineWidth;
        XAxis;
        YAxis;
        ZAxis;
        XAxisLocation;
        YAxisLocation;
        ZAxisLocation;
        XColor;
        YColor;
        ZColor;
        XDir;
        YDir;
        ZDir;
        XScale;
        YScale;
        ZScale;
        XLim;
        YLim;
        ZLim;
        XLimMode;
        YLimMode;
        ZLimMode;
        XTick;
        YTick;
        ZTick;
        XTickMode;
        YTickMode;
        ZTickMode;
        XTickLabel;
        YTickLabel;
        ZTickLabel;
        XTickLabelMode;
        YTickLabelMode;
        ZTickLabelMode;
        TickLabelInterpreter;
        XTickLabelRotation; % For > R2014b 
        YTickLabelRotation; % For > R2014b
        ZTickLabelRotation; % For > R2014b
        XMinorTick;
        YMinorTick;
        ZMinorTick;
        TickLength;
        TickDir;
        TickDirMode;
        XGrid;
        YGrid;
        ZGrid;
        XMinorGrid;
        YMinorGrid;
        ZMinorGrid;
        GridLineStyle;
        MinorGridLineStyle;
        GridColor;
        GridColorMode;
        MinorGridColor;
        MinorGridColorMode;
        GridAlpha;
        GridAlphaMode;
        MinorGridAlpha;
        MinorGridAlphaMode;
        Layer;
        FontName;
        FontSize;
        FontUnits;
        FontAngle;
        FontWeight;
        TitleFontWeight;
        FontSmoothing;
        Title;
        XLabel;
        YLabel;
        ZLabel;
        ColorOrder;
        ColorOrderIndex;
        LineStyleOrder;
        LineStyleOrderIndex;
        CLim;
        CLimMode;
        ALim;
        ALimMode;
        AmbientLightColor;
        NextPlot;
        SortMethod;
        Visible;
        Clipping;
        ClippingStyle;
        Position;
        TightInset;
        OuterPosition;
        ActivePositionProperty;
        Units;
        Projection
        DataAspectRatio;
        DataAspectRatioMode;
        PlotBoxAspectRatio;
        PlotBoxAspectRatioMode;
        CameraPosition;
        CameraPositionMode;
        CameraTarget;
        CameraTargetMode;
        CameraUpVector;
        CameraUpVectorMode;
        CameraViewAngle;
        CameraViewAngleMode;
        View;
        Type;
        Tag;
        UserData;
        % Parent; % Inherited from Component
        Children;
        HandleVisibility;
        CurrentPoint;
        ButtonDownFcn;
        UIContextMenu;
        Selected;
        SelectionHighLight;
        PickableParts;
        HitTest;
        Interruptible;
        BusyAction;
        CreateFcn;
        DeleteFcn;
        BeingDeleted;
>>>>>>> bd06ba84796899d21939b2d61b5c4280277a8fc0
    end
    
    methods
        function obj = Axes()
            obj.hUI = axes('Parent',obj.DEFAULT_PARENT,...
                'NextPlot','Replace',...
                'XLim',[0 1],...
                'YLim',[0 1]);
        end
    end
    
end

