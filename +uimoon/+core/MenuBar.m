classdef MenuBar < uimoon.core.Component
    
    
    properties
        %
    end
    
    methods
        function obj = MenuBar(varargin)
            obj.hUI = uimenu('visible','off');
            obj.Add(varargin);
        end
        
        function Add(obj,varargin)
            for ii = 1:length(varargin)
                hA = varargin{ii};
                if isa(hA,'Menu')
                    hA.SetParent(obj.hUI);
                end
            end
        end
        
    end
    
end

