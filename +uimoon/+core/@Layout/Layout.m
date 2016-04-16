classdef Layout < hgsetget
    % Label class
    
    properties
        hUI; % handle
        type_;
    end
    
    methods
        function obj = Layout(type,varargin)
            obj.hUI = uipanel('units','Normalized',...
                'BorderType','None');
            obj.type_ = type;
            obj.SetLayoutType(type,varargin);
        end
        
        function SetLayoutType(obj,type,varargin)
            layout = type; % 
            
            if nargin == 5 && or(strcmp(layout,'grid'),strcmp(layout,'g'))
                border = varargin{2};
                rows_ = varargin{3};
                cols_ = varargin{4};
            elseif nargin == 3
                border = varargin{2};
            elseif nargin == 2 && isa(varargin{1},'struct')
                struct_layout = varargin{1};
                layout = struct_layout.name;
                border = struct_layout.border;
                if strcmp(layout,'grid')
                    rows_ = struct_layout.rows;
                    cols_ = struct_layout.cols;
                end
            else
                border = 5;
            end
            
            %hcs = findobj('parent',obj.hCont); % array of handles
            hcs = obj.children_;
            ncs = length(hcs); % length of " " "
            
            switch lower(layout)
                case {'vertical','v'}
                    verticalSizer();
                    obj.layout_ = struct('name','vertical',...
                        'border',border);
                case {'horizontal','h'}
                    horizontalSizer();
                    obj.layout_ = struct('name','horizontal',...
                        'border',border);
                case {'grid','g'}
                    obj.layout_ = struct('name','grid',...
                        'border',border,...
                        'rows',rows_,...
                        'cols',cols_);
                    gridSizer();
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
                        cmp_ref = hcs{i}.hCont;
                    else
                        cmp_ref = hcs{i}.hComp;
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
                        cmp_ref = hcs{i}.hCont;
                    else
                        cmp_ref = hcs{i}.hComp;
                    end
                    set(cmp_ref,'units','normalized',...
                        'Position',[POSX+CX CY W_ H_]);
                end
            end
            
            function gridSizer
                CW = obj.width_; % Container width
                CH = obj.height_; % Container height
                nrows = obj.layout_.rows;
                ncols = obj.layout_.cols;
                
                ANCHO = ((CW/(ncs/nrows))-(border*((ncs+1)/2)))/CW;
                ALTO = ((CH/(ncs/ncols))-(border*((ncs+1)/2)))/CH;
                KX = border/CW;
                KY = border/CH;
                k=1;
                for i=rows_:-1:1
                    for j=1:cols_
                        try
                            set(hcs{k}.hComp,'units','normalized',...
                                'Position',[(j-1)*(1/cols_)+KX (i-1)*(1/rows_)+KY ANCHO ALTO]);
                            k = k + 1;
                            % [(j-1)*(1/cols_) (i-1)*(1/rows_) 1/cols_ 1/rows_]
                        catch err %#ok
                            % pass
                        end
                    end
                end
            end
        end
        
    end
end

