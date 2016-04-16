classdef Container < hgsetget
    
    properties
        hUI;
        name_;
        size_;
        color_;
        width_;
        height_;
        layout_;
        proportion_;
        children_;
        childrenproportions_;
    end
    
    methods
        function obj = Container() % <?>
            % Horizontal layout por defecto
            
            obj.layout_ = 'horizontal';
            obj.children_ = {};
        end
    end
    
end

