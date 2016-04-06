classdef ContextMenu < handle
    % ContextMenu
    % 
    % Contextual Menu
    % 
    % Syntax:
    % 
    %        h = ContextMenu(varargin);
    %  
    % "varargin" is a object list of Menu class.
    % 
    % Example:
    %        
    %        app = Frame('App 1');
    %        m1 = Menu('Menu 1','');
    %        m2 = Menu('Menu 2','');
    %        ctx = ContextMenu(m1,m2);
    %        app.SetContextMenu(ctx);
    %
    %
    
    
    properties
        hCtx; % Handles of contextual menu
    end
    
    methods
        function obj = ContextMenu(varargin)
            obj.hCtx = uicontextmenu;
            if ~isempty(varargin)
                for i = 1:length(varargin)
                    set(varargin{i}.hMenu,'Parent',obj.hCtx);
                end
            end
        end
    end
    
end

