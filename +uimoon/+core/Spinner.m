classdef Spinner < uimoon.core.Component
    % Spinner
    %
    %
    
    properties
        hJUI;
    end
    
    methods
        function obj = Spinner
            [obj.hJUI, obj.hUI]=javacomponent({'javax.swing.JSpinner'},...
                [],gcf);
        end
        
        function val = GetValue(obj)
            val = obj.hJUI.getValue();
        end
    end
    
end

