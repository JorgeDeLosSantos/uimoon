classdef Button < Component
    % Button class
    %
    % Sintaxis:
    %
    %           hBt = Button(str);
    %           
    % Ejemplo:
    %
    %           app = Frame('App 1');
    %           bt = Button('Botón');
    %           bt.SetCallback('disp(''Hola'')');
    %           app.Add(bt);
    
    properties
    end
    
    methods
        function obj = Button(str)
            obj.hComp = uicontrol('style','push',...
                'String',str,obj.DEFAULT_PROPERTIES{:});
            obj.str_ = str;
            obj.parent_ = get(obj.hComp,'Parent');
        end
        
        function SetCallback(obj,fun)
            set(obj.hComp,'Callback',{fun,obj});
        end
    end
    
end

