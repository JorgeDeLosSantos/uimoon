classdef Menu
    % Menu
    % 
    % Sintaxis:
    %
    %        M = Menu('Label Menu',@Callback_Fcn);
    %        M = Menu('Label Menu',@Callback_Fcn,varargin);
    %
    % Se espera que varargin sea una lista de argumentos
    % "pareados" cuyos valores pueden ser:
    %
    %        'Separator'          --->       'on' | 'off'
    %        'ForegroundColor'    --->       Vector RGB o especificador   
    %        'Enable'             --->       'on' | 'off'
    %
    %
    %
    
    properties
        hMenu;
    end
    
    methods
        function obj = Menu(label,callback,varargin)
            if ~isempty(varargin)
                obj.hMenu = uimenu(gcf,'label',label,...
                    'callback',callback,varargin{:});
            else
                obj.hMenu = uimenu(gcf,'label',label,...
                    'callback',callback);
            end
        end
        
        function SetParent(obj,parent)
            if isa(parent,'Frame')
                parent_ = parent.hCont;
            elseif isa(parent,'Menu')
                parent_ = parent.hMenu;
            else
                error('Verifica el objeto padre');
            end
            set(obj.hMenu,'Parent',parent_);
        end
        
        function AddItem(obj,item)
            item.SetParent(obj);
        end
    end
    
end

