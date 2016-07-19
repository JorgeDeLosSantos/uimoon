classdef GridLayout < uimoon.core.Layout
    % GridLayout    A simple grid layout
    %
    %
    
    properties
        Rows;
        Cols;
        Border;
    end
    
    methods
        function obj = GridLayout(rows, cols, border)
            obj.hUI = uigridcontainer('v0', 'gridsize',[rows cols]);
            %             obj.hUI = uipanel('units','Normalized',...
            %                 'BorderType','None',...
            %                 'Visible','off');
            drawnow;
            obj.Rows = rows;
            obj.Cols = cols;
            obj.Border = border;
        end
        
        
        function Add(obj,uic,proportion)
            % Add
            %
            
            if nargin<3
                proportion = 0.1;
            end
            
            % Setting parent
            try
                set(uic.hUI,    ...
                    'Parent',    obj.hUI,...
                    'Visible',   'on' );
            catch err
                disp(err.message);
            end
            
%             current_units = get(obj.hUI, 'Units');
%             if ~strcmpi(current_units,'pixels')
%                 set(obj.hUI, 'Units', 'Pixels');
%             end
%             
%             cpos = get(obj.hUI, 'Position');
%             width = cpos(3);
%             height = cpos(4);
            
            % Drawing
            obj.Draw();
        end
        
        
        function Draw(obj)
            % HW and VW
%             set(hc, 'HorizontalWeight',o, 'VerticalWeight',[0.2,0.5])
            
            % Paint
            drawnow;
            %             % Delete temporal objects (Spaces)
            %             temp_ = cellfun(@(x) x.IsTemporal(),obj.children_);
            %             obj.children_(temp_) = [];
            %
            %             % Append "spaces" for empty positions temporarily
            %             if length(obj.children_)<(obj.rows_*obj.cols_)
            %                 for i=1:((obj.rows_*obj.cols_)-length(obj.children_))
            %                     obj.AddSpace(0.1, 'temporal');
            %                 end
            %             end
            %
            %             % Rows, cols, and borders
            %             rows = obj.rows_;
            %             cols = obj.cols_;
            %             border = obj.border_;
            %
            %             hcs = obj.children_;
            %             ncs = length(hcs); % length of " " "
            %
            %             CW = obj.width_; % Container width
            %             CH = obj.height_; % Container height
            %
            %             ANCHO = ((CW/(ncs/rows))-(border*((ncs+1)/2)))/CW;
            %             ALTO = ((CH/(ncs/cols))-(border*((ncs+1)/2)))/CH;
            %             KX = border/CW;
            %             KY = border/CH;
            %             k=1;
            %             for i=rows:-1:1
            %                 for j=1:cols
            %                     try
            %                         set(hcs{k}.hUI,'units','normalized',...
            %                             'Position',[(j-1)*(1/cols)+KX (i-1)*(1/rows)+KY ANCHO ALTO]);
            %                         k = k + 1;
            %                         % [(j-1)*(1/cols_) (i-1)*(1/rows_) 1/cols_ 1/rows_]
            %                     catch err
            %                         disp(err.message);
            %                     end
            %                 end
            %             end
        end
    end
    
end

