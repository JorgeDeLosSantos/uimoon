classdef TextField < Component
    
    properties
        % Super - properties
    end
    
    methods
        function obj = TextField(str)
            if nargin < 1
                str = '';
            end
            obj.hComp = uicontrol('Style','edit',...
                'String',str,'BackG','w');
            obj.str_ = str;
        end
    end
    
end

