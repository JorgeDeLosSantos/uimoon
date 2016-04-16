classdef EditorPane < uimoon.core.Component
    
    
    properties
        hJUI;
    end
    
    methods
        function obj = EditorPane(src)
            jep = javax.swing.JEditorPane('text/html',src);
            [obj.hJUI, obj.hUI] = javacomponent(jep, [], gcf);
        end
    end
end

