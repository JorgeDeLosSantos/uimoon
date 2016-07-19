classdef Font
    % Font class
    
    properties
        Name;
        Size;
        Weight;
    end
    
    methods
        function obj = Font(name,size,weight)
            obj.Name = name;
            obj.Size = size;
            obj.Weight = weight;
        end
    end
end

