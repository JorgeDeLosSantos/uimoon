classdef Spinner < uimoon.core.Component
    % Spinner
    %
    %
    
    properties
        JhComp;
    end
    
    methods
        function obj = Spinner
            [obj.JhComp,obj.hComp]=javacomponent({'javax.swing.JSpinner'},...
                [],gcf);
        end
        
        function val = GetValue(obj)
            val = obj.JhComp.getValue();
        end
    end
    
end

