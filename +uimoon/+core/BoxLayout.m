classdef BoxLayout < uimoon.core.Layout
    % Label class
    
    properties
        orientation_;
        border_;
    end
    
    methods
        function obj = BoxLayout(orientation,border)
            obj.hUI = uipanel('units','Normalized',...
                'BorderType','None',...
                'Visible','off');
            obj.orientation_ = orientation;
            obj.border_ = border;
            obj.width_ = 100;
            obj.height_ = 100;
        end
        
        function Draw(obj)
            hcs = obj.children_;
            ncs = length(hcs); % length of " " "
            
            border = obj.border_;
            
            switch lower(obj.orientation_)
                case {'vertical','v'}
                    verticalSizer();
                case {'horizontal','h'}
                    horizontalSizer();
                otherwise
                    warning('Undefined layout');
                    verticalSizer(); % Default layout
            end
            
            function verticalSizer
                CW = obj.width_; % Container width
                CH = obj.height_; % Container height
                
                W_ = (CW-(2*border))/CW;
                CX = border/CW;
                CY = border/CH;
                
                for i=1:ncs
                    prop = hcs{i}.proportion_; % Current proportion
                    POSY = 1 - sum(obj.childrenproportions_(1:i)); % Y-Position (Normalized)
                    H_ = (prop*(CH)-(border*((ncs+1)/2)))/CH; % Height
                    if isa(hcs{i},'uimoon.core.Container')
                        cmp_ref = hcs{i}.hUI;
                    else
                        cmp_ref = hcs{i}.hUI;
                    end
                    set(cmp_ref,'units','normalized',...
                        'Position',[CX POSY+CY W_ H_]);
                end
            end
            
            function horizontalSizer
                CW = obj.width_; % Container width
                CH = obj.height_; % Container height
                H_ = (CH-(2*border))/CH;
                CX = border/CW;
                CY = border/CH;
                
                for i=1:ncs
                    prop = hcs{i}.proportion_; % Current proportion
                    POSX = sum(obj.childrenproportions_(1:i-1)); % X-Position (Normalized)
                    W_ = (prop*(CW)-(border*((ncs+1)/2)))/CW; % Width
                    if isa(hcs{i},'uimoon.core.Container')
                        cmp_ref = hcs{i}.hUI;
                    else
                        cmp_ref = hcs{i}.hUI;
                    end
                    set(cmp_ref,'units','normalized',...
                        'Position',[POSX+CX CY W_ H_]);
                end
            end
        end
        
    end
end

