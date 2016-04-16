classdef TextField < uimoon.core.Component
    
    properties
        % Super - properties
    end
    
    methods
        function obj = TextField(str)
            if nargin < 1
                str = '';
            end
            obj.hUI = uicontrol('Style','edit',...
                'String',str,'BackG','w',...
                obj.DEFAULT_PROPERTIES{:});
            obj.str_ = str;
        end
    end
end

