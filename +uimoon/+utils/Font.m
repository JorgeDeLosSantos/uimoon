classdef Font
    % Font class
    
    properties
        name_;
        size_;
        weight_;
    end
    
    methods
        function obj = Font(name,size,weight)
            obj.name_ = name;
            obj.size_ = size;
            obj.weight_ = weight;
        end
    end
end

