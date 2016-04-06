classdef PasswordField < Component
    % PasswordField
    
    properties
        hJComp; % handle java component
    end
    
    methods
        function obj = PasswordField
            [obj.hJComp,obj.hComp]=javacomponent({'javax.swing.JPasswordField'},[],gcf);
        end
        
        function pass = GetPassword(obj)
            pass = get(obj.hJComp, 'Text');
        end
    end
    
end

