classdef AboutDialog < uimoon.core.Dialog
% AboutDialog
% 
% Create an about dialog.
%
% AboutDialog Parameters:
% 
%     name          -  Project Name
%     version       -  Version
%     description   -  Description
%     authors       -  Author(s) of project
%     email         -  E-mail
%     web           -  Project URL
%      
%
% UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos <delossantosmfq@gmail.com>
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%

    properties
        name_;
        version_;
        description_;
        authors_;
        email_;
        web_;
    end
    
    methods
        function obj = AboutDialog(name,version,description,authors,email,web)
            if isa(version,'double')
                version = num2str(version);
            end
            obj.name_ = name;
            obj.version_ = version;
            obj.description_ = description;
            obj.authors_ = authors;
            obj.email_ = email;
            obj.web_ = web;
            obj.initComponents();
        end
        
        function initComponents(obj)
            obj.hUI = figure('MenuBar','None',...
                'NumberTitle','off',...
                'Name','About ...',...
                'Position',[0 0 300 150],...
                'Color','w',...
                'Resize','off');
            centerfig(obj.hUI);
            
            uicontrol('style','text',...
                'String',[obj.name_,' ',obj.version_],...
                'Units','Normalized',...
                'Position',[0 0.85 1 0.12],...
                'FontName','DejaVu Sans Mono',...
                'FontSize',11,...
                'ForegroundColor','b',...
                'FontWeight','bold');
            
            uicontrol('style','text',...
                'String',obj.description_,...
                'Units','Normalized',...
                'Position',[0 0.4 1 0.42],...
                'ForegroundColor',[0.5,0.8,0.5]);
            
            uicontrol('style','text',...
                'String',obj.authors_,...
                'Units','Normalized',...
                'Position',[0 0.25 1 0.1],...
                'FontWeight','bold',...
                'ForegroundColor',ones(1,3)*0.4);
            
            uicontrol('style','text',...
                'String',obj.email_,...
                'Units','Normalized',...
                'Position',[0 0.15 1 0.1],...
                'ForegroundColor',ones(1,3)*0.4);
                
            uicontrol('style','text',...
                'String',obj.web_,...
                'Units','Normalized',...
                'Position',[0 0.05 1 0.1],...
                'ForegroundColor',ones(1,3)*0.4);
            
            set(findobj('Style','text'),'BackG',get(obj.hUI,'Color'));
        end
    end

end

