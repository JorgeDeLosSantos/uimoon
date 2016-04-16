classdef PasswordField < uimoon.core.Component
    % PasswordField
    
    properties
        hJUI; % handle java component
    end
    
    methods
        function obj = PasswordField
            [obj.hJUI, obj.hUI]=javacomponent({'javax.swing.JPasswordField'},[],gcf);
        end
        
        function pass = GetPassword(obj)
            pass = get(obj.hJUI, 'Text');
        end
    end
    
end

