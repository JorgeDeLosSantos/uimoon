classdef EditorPane < Component
    
    
    properties
        JhComp;
    end
    
    methods
        function obj = EditorPane(src)
            jep = javax.swing.JEditorPane('text/html',src);
            [obj.JhComp,obj.hComp]=javacomponent(jep,[],gcf);
        end
    end
    
end

