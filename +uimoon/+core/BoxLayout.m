classdef BoxLayout < uimoon.core.Layout
    % Label class
    
    properties
        Orientation;
        Border;
    end
    
    methods
        function obj = BoxLayout(orientation,border)
            %             obj.hUI = uipanel('units','Normalized',...
            %                 'BorderType','None',...
            %                 'Visible','off');
            obj.hUI = uiflowcontainer('v0');
            obj.Orientation = orientation;
            obj.Border = border;
        end
        
        
        function Add(obj,uic,proportion)
            % Add
                       
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
            
            current_units = get(obj.hUI, 'Units');
            if ~strcmpi(current_units,'pixels')
                set(obj.hUI, 'Units', 'Pixels');
            end
            
            cpos = get(obj.hUI, 'Position');
            width = cpos(3);
            height = cpos(4);
            
            KF = 0.95; % pseudo-correction factor
            
            if strcmpi(obj.Orientation,'vertical') || strcmpi(obj.Orientation,'v')
                set(uic.hUI, 'HeightLimits',[proportion inf]*height*KF);
            else
                set(uic.hUI, 'WidthLimits',[proportion inf]*width*KF);
            end
            
            % Drawing
            obj.Draw();
        end
        
        
        function Draw(obj)
            switch lower(obj.Orientation)
                case {'vertical','v'}
                    set(obj.hUI,'FlowDirection','TopDown');
                case {'horizontal','h'}
                    set(obj.hUI,'FlowDirection','LeftToRight');
                otherwise
                    warning('Undefined layout');
                    set(obj.hUI,'FlowDirection','LeftToRight'); % Horiz def
            end
            
            % Set margin/border
            set(obj.hUI, 'Margin', obj.Border);
            
            
            drawnow;
            
            
            % ============================  OLD  =====================================
            %
            %             hcs = obj.Children;
            %             ncs = length(hcs); % length of " " "
            %
            %             border = obj.Border;
            %
            %             switch lower(obj.Orientation)
            %                 case {'vertical','v'}
            %                     verticalSizer();
            %                 case {'horizontal','h'}
            %                     horizontalSizer();
            %                 otherwise
            %                     warning('Undefined layout');
            %                     verticalSizer(); % Default layout
            %             end
            %
            %             function verticalSizer
            %                 CW = obj.Width; % Container width
            %                 CH = obj.Height; % Container height
            %
            %                 W_ = (CW-(2*border))/CW;
            %                 CX = border/CW;
            %                 CY = border/CH;
            %
            %                 for i=1:ncs
            %                     prop = hcs{i}.Proportion; % Current proportion
            %                     POSY = 1 - sum(obj.ChildrenProportions(1:i)); % Y-Position (Normalized)
            %                     H_ = (prop*(CH)-(border*((ncs+1)/2)))/CH; % Height
            %                     if isa(hcs{i},'uimoon.core.Container')
            %                         cmp_ref = hcs{i}.hUI;
            %                     else
            %                         cmp_ref = hcs{i}.hUI;
            %                     end
            %                     set(cmp_ref,'units','normalized',...
            %                         'Position',[CX POSY+CY W_ H_]);
            %                 end
            %             end
            %
            %             function horizontalSizer
            %                 CW = obj.Width; % Container width
            %                 CH = obj.Height; % Container height
            %                 H_ = (CH-(2*border))/CH;
            %                 CX = border/CW;
            %                 CY = border/CH;
            %
            %                 for i=1:ncs
            %                     prop = hcs{i}.Proportion; % Current proportion
            %                     POSX = sum(obj.ChildrenProportions(1:i-1)); % X-Position (Normalized)
            %                     W_ = (prop*(CW)-(border*((ncs+1)/2)))/CW; % Width
            %                     if isa(hcs{i},'uimoon.core.Container')
            %                         cmp_ref = hcs{i}.hUI;
            %                     else
            %                         cmp_ref = hcs{i}.hUI;
            %                     end
            %                     set(cmp_ref,'units','normalized',...
            %                         'Position',[POSX+CX CY W_ H_]);
            %                 end
            %             end
            %
            % ======================== END OLD =======================================
            
            
        end
        
    end
end

