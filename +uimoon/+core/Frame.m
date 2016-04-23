classdef Frame < uimoon.core.Container
    % Frame Create a frame based on MATLAB figure.
    %
    % 
    % Parameters:
    %           title  -  Name or title of window
    %           size   -  Vector of width and height dimensions
    %   
    % Example:
    %           >> app = Frame('App',[300,200]);
    %
    %
    
    properties
        % Inherited from Container
    end
    
    methods
        function obj = Frame(title,size)
            if nargin==1
                size=[300 200]; % Default size
            end
            scsz = get(0,'ScreenSize');
            obj.hUI = figure('MenuBar','None',...
                'NumberTitle','off',...
                'Name',title,...
                'Position',[scsz(3)/3 scsz(4)/3 size(1) size(2)],...
                'Resize','on');
            %             centerfig(obj.hUI);
            obj.size_=size;
            obj.title_= title;
            obj.color_= uimoon.utils.Color(0.98,0.98,0.98);
            obj.width_=size(1);
            obj.height_=size(2);
            obj.SetColor(obj.color_);
        end
        
        function SetIcon(obj,iconfile)
            if ~exist(iconfile,'file')
                warning(['El archivo ',iconfile,' no existe, verifique.']);
            else
                warning('off','MATLAB:HandleGraphics:ObsoletedProperty:JavaFrame');
                jframe=get(obj.hUI,'javaframe');
                jIcon=javax.swing.ImageIcon(iconfile);
                jframe.setFigureIcon(jIcon);
            end
        end
        
        function Center(obj,state)
            if nargin < 2; state = true; end; % app.Center() <- True default
            if state
                centerfig(obj.hUI);
            end
        end
        
        function Resize(obj,state)
            if state
                set(obj.hUI,'Resize','on');
            else
                set(obj.hUI,'Resize','off');
            end
        end
        
        function SetTitle(obj, title)
            % Set title for frame class
            % 
            % 
            set(obj.hUI,'Name',title);
        end
        
        function SetMenuBar(obj, menubar)
            set(menubar.hUI,'Parent',obj.hUI);
        end
    end
end

