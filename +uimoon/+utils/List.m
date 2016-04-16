classdef List < handle
    % List class
    
    properties
        elements = {}; % empty cell
    end
    
    methods
        function obj = List(varargin)
            for arg=1:length(varargin)
                obj.add(varargin{arg});
            end
        end
        
        function add(obj,elm)
            obj.elements = [obj.elements, elm];
        end
        
        function el = get(obj,idx)
            try
                el = obj.elements{idx};
            catch %#ok
                el = []; % empty array
            end
        end
        
        function r = length(obj)
            r = length(obj.elements);
        end
        
        function disp(obj)
            % Display method
            fprintf('uimoon.utils.List\n');
            disp(obj.elements);
        end
    end
end

