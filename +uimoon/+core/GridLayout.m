classdef GridLayout < uimoon.core.Layout
    % Label class
    
    properties
        rows_;
        cols_;
        border_;
    end
    
    methods
        function obj = GridLayout(rows, cols, border)
            obj.hUI = uipanel('units','Normalized',...
                'BorderType','None',...
                'Visible','off');
            obj.rows_ = rows;
            obj.cols_ = cols;
            obj.border_ = border;
            obj.width_ = 100;
            obj.height_ = 100;
        end
        
        function Draw(obj)
            % Append "spaces" for empty positions
            if length(obj.children_)>(obj.rows_*obj.cols_)
                for i=1:((obj.rows_*obj.cols_)-length(obj.children_))
                    obj.AddSpace();
                end
            end
            
            rows = obj.rows_;
            cols = obj.cols_;
            border = obj.border_;
            
            hcs = obj.children_;
            ncs = length(hcs); % length of " " "
            
            CW = obj.width_; % Container width
            CH = obj.height_; % Container height
            
            ANCHO = ((CW/(ncs/rows))-(border*((ncs+1)/2)))/CW;
            ALTO = ((CH/(ncs/cols))-(border*((ncs+1)/2)))/CH;
            KX = border/CW;
            KY = border/CH;
            k=1;
            for i=rows:-1:1
                for j=1:cols
                    try
                        set(hcs{k}.hUI,'units','normalized',...
                            'Position',[(j-1)*(1/cols)+KX (i-1)*(1/rows)+KY ANCHO ALTO]);
                        k = k + 1;
                        % [(j-1)*(1/cols_) (i-1)*(1/rows_) 1/cols_ 1/rows_]
                    catch err
                        disp(err.message);
                    end
                end
            end
        end
    end
    
end

