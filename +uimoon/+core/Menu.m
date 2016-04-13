classdef Menu < uimoon.core.Component
    % Menu
    % 
    % Syntax:
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
        %
    end
    
    methods
        function obj = Menu(label,callback,varargin)
            if ~isempty(varargin)
                obj.hComp = uimenu(gcf,'label',label,...
                    'callback',callback,varargin{:});
            else
                obj.hComp = uimenu(gcf,'label',label,...
                    'callback',callback);
            end
        end
        
        function SetParent(obj,parent)
            if isa(parent,'uimoon.core.Frame')
                parent_ = parent.hCont;
            elseif isa(parent,'uimoon.core.Menu')
                parent_ = parent.hComp;
            else
                error('Invalid parent object');
            end
            set(obj.hComp,'Parent',parent_);
        end
        
        function AddItem(obj,item)
            item.SetParent(obj);
        end
    end
    
end

