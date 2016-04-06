classdef MessageBox
    % MessageBox
    % 
	% Sintaxis:
	% 
	%          MessageBox(msg,title,style,icon);
	%
	% Ejemplo:
	%
	%          MessageBox('Este es un mensaje de error','LAB DLS','error');
	%
	%
	%
    % styles:
    %      - normal
    %      - error
    %      - warn
    %      - info
    %      - custom
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
                % Icono no definido ...
                icon = zeros(32,32,3);
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
                    obj.hMsg = msgbox(msg,title,'custom',icon);
                otherwise
                    % pass
            end
        end
        
        function SetFont(obj,name,size)
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

