function SetLayout(obj,varargin)
% Container/SetLayout
%
% Configura, de forma automática, la distribución de los
% controles gráficos dentro de un objeto Container.
%
% LAYOUTS DISPONIBLES:
%
%         'vertical'
%         'horizontal'
%         'grid'
%
% ARGUMENTOS VARIABLES (VARARGIN)
% Para el caso 'vertical' y 'horizontal' habrá de pasarse
% como argumento extra el espacio de separación en pixeles
% entre cada uno de los elementos, de lo contrario se tomará
% el valor de 5px por default.
%
% Para el tipo 'grid' deben especificarse el espacio de separación,
% el número de filas y el número de columnas. Es 'estrictamente'
% necesario el colocar todos los argumentos.
%
% SINTAXIS:
%
%           obj.SetLayout('vertical');
%           obj.SetLayout('vertical',espaciado);
%           obj.SetLayout('grid',espaciado,filas,columnas);
%
% EJEMPLOS:
%
%           app1 = Frame('App 1');
%           app1.SetLayout('grid',10,2,2);
%           ............................
%           app2 = Frame('App 2');
%           app2.SetLayout('vertical',4);
%
%

layout = varargin{1}; % Fijo

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

%hcs = findobj('parent',obj.hUI); % array of handles
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
                    set(hcs{k}.hUI,'units','normalized',...
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