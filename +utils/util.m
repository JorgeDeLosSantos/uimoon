classdef util
    % util  -->   Toolbox utilities
    
    properties (Constant = true)
        % ================== INFO PROJECT ==============================
        Info = struct('NAME','GUIOOD Toolbox',...
            'VERSION','0.0.1',...
            'DEVELOPER','Jorge De Los Santos',...
            'EMAIL','delossantosmfq@gmail.com',...
            'BLOG','http://labdls.blogspot.mx');
        
        % ================= COLORS ====================================
        Color = struct('RED',     [1 0 0],...
            'GREEN',   [0 1 0],...
            'BLUE',    [0 0 1],...
            'YELLOW',  [1 1 0],...
            'WHITE',   [1 1 1],...
            'BLACK',   [0 0 0],...
            'MAGENTA', [1 0 1]);
        
        % ===================== FONTS ================================
        Font = struct('MODERN',{'DejaVu Sans',12,'k','normal'},...
            'CLASSIC',{'Arial',11,'k','normal'},...
            'FORMAL',{'Times New Roman',12,'k','normal'},...
            'MONOSPACED',{'DejaVu Sans Mono',11,'k','normal'},...
            'CODE',{'Courier New',11,'k','normal'});
        
        Title = struct('DLG_TITLE','GUIOOD',...
            'GRAPH_TITLE','untitled');
    end
    
    methods (Static)
        function hObjs = FindByClass(cl)
            if ~isa(cl,'char')
                error('El argumento de entrada debe ser un string');
            end
            all_objs = evalin('caller','whos');
            k = 1;
            hObjs = [];
            for i=1:length(all_objs)
                if strcmp(all_objs(i).class,cl)
                    hObjs{k} = evalin('caller',all_objs(i).name); %#ok
                    k = k + 1;
                end
            end
        end
        
%         function hObjs = FindByName(name) % ¿why?
%             all_objs = evalin('caller','whos');
%             k = 1;
%             hObjs = [];
%             for i=1:length(all_objs)
%                 if strcmp(all_objs(i).name,name)
%                     hObjs{k} = evalin('caller',all_objs(i).name); % 
%                     k = k + 1;
%                 end
%             end
%         end
    end
end

