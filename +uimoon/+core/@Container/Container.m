classdef Container < handle
    
    properties
        hCont;
        name_;
        size_;
        color_;
        width_;
        height_;
        layout_;
    end
    
    methods
        function obj = Container() % <?>
            % Horizontal layout por defecto
            obj.layout_ = 'horizontal';
        end
    end
    
end

