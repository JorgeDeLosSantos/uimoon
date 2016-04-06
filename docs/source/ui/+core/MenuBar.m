classdef MenuBar
    
    
    properties
        hMB;
    end
    
    methods
        function obj = MenuBar(varargin)
            obj.hMB = uimenu();
            obj.Add(varargin);
        end
        
        function Add(obj,varargin)
            for ii = 1:length(varargin)
                hA = varargin{ii};
                if isa(hA,'Menu')
                    hA.SetParent(obj.hMB);
                end
            end
        end
    end
    
end

