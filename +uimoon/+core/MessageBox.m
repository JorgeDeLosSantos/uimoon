classdef MessageBox
    % MessageBox
    % 
	% Syntax:
	% 
	%          MessageBox(msg,title,style,icon);
	%
	% Example:
	%
	%          MessageBox('This is a error dialog','UIMOON','error');
	%
    % Styles:
    %      - normal :   Normal Message Box
    %      - error  :   Message Box with error icon
    %      - warn   :   Message Box with warning icon
    %      - info   :   Message Box with information icon
    %      - custom :   Message Box with customized icon
	% 
	% 
    
    properties
        hMsg;
        msg_;
        title_;
        style_;
    end
    
    methods
        function obj = MessageBox(msg,title,style,icon)
            if nargin < 3
                style = 'normal';
            end
            if strcmp(style,'custom') && nargin < 4
                % Undefined icon, use a empty image ...
                icon = '';
                icon_data = zeros(32,32,3);
            end
            
            obj.msg_ = msg;
            obj.title_ = title;
            obj.style_ = style;
            switch style
                case 'normal'
                    obj.hMsg = msgbox(msg,title);
                case 'error'
                    obj.hMsg = errordlg(msg,title);
                case 'warn'
                    obj.hMsg = warndlg(msg,title);
                case 'info'
                    obj.hMsg = helpdlg(msg,title);
                case 'custom'
                    if ~isempty(icon)
                        try
                            icon_data = imread(icon);
                        catch err
                            icon_data = zeros(32,32,3);
                        end
                    end
                    obj.hMsg = msgbox(msg,title,'custom',icon_data);
                otherwise
                    % pass
            end
        end
        
        function SetFont(obj,name,size)
	        % MessageBox/SetFont
	        %
	        % Set the MessageBox font:
	        %
	        % Parameters:
	        % 
	        %         name :   Font Name, i.e. 'Arial', 'Times New Roman', 'DejaVu Sans'
	        %
	        % 		  size :   Font size, i.e.  10, 12, 18, 11, ...
	        %
            msg_childs = get(obj.hMsg,'Children');
            if strcmp(get(msg_childs(1),'type'),'axes')
                hTxt = get(msg_childs(1),'Children');
            else
                hTxt = get(msg_childs(2),'Children');
            end
            set(hTxt,'FontName',name,...
                'FontSize',size);
        end
        
        function SetButtonText(obj,str)
            msg_childs = get(obj.hMsg,'Children');
            if strcmp(get(msg_childs(2),'type'),'uicontrol')
                hBt = msg_childs(2);
            else
                hBt = msg_childs(1);
            end
            set(hBt,'String',str);
        end
        
        function disp(obj)
            disp(obj.hMsg);
        end
    end
    
end

