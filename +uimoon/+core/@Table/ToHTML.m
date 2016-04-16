function ToHTML(obj,filename,opts)
% Table/ToHTML
%
% Export uitable (Table class) to a table on HTML file.
% This method was developed as a function named "table2html" 
% which can you get from:
% 
% ---->   [ URL ]
%
% Syntax
%
% ToHTML(filename,opts)
%
%          filename   -  Name of output file (*.html)
%          opts       -  Struct variable with additional options (See Options)
%
% Example: 
%
%       app = Frame('App');
%       tab = Table(rand(3),{'A1','A2','A3'});
%       app.Add(tab);
%       tab.ToHTML('Example.html');
%
% Options
%
%       PageTitle      -->     Title of page
%       TableTitle     -->     Title of table
%       BgColor        -->     Backgroundcolor of table
%       FontName       -->     Font type used in the table
%       BorderWidth    -->     Width of table border
%
% Example with options:
%
%       app = Frame('Table Export Demo');
%       tab = Table(rand(3),{'A','B','C'});
%       app.Add(tab);
%       opts.PageTitle = 'Example';
%       opts.TableTitle = 'My table';
%       opts.BgColor = '#00FF00';
%       opts.FontName = 'Arial';
%       opts.BorderWidth = '3';
%       tab.ToHTML('MyExample.html',opts);
%
%
% -------------------------------
% GUIOOD Toolbox 0.1.1
% Dev: P.J. De Los Santos
% E-mail: delossantosmfq@gmail.com
% Web: http://labdls.blogspot.mx
% License: MIT License
% -------------------------------

hTab = obj.hUI; % Referencia a la uitable
if nargin < 2
    % Si no se especifica un archivo de salida, entonces por defecto
    % se aloja el resultado en la dirección html/untitled.html
    filename = 'html/untitled.html';
end

% ========================== OPCIONES ===================================
fields_opts = {'PageTitle',   'Sin título',;
    'TableTitle',  'Tabla 1';
    'BgColor',     '#F0F0F0';
    'FontName',    'DejaVu Sans Mono';
    'BorderWidth', '2';
    'FontColor',   '#0000F0'};
if nargin == 3 && isstruct(opts)
    for k = 1:size(fields_opts,1)
        if ~isfield(opts,fields_opts{k,1})
            opts = setfield(opts,fields_opts{k,1},fields_opts{k,2});
        end
    end
else
    opts = cell2struct(fields_opts(:,2),fields_opts(:,1),1);
end

% ======================= PROPIEDADES DE LA TABLA ======================

X = get(hTab,'Data');
colnames = get(hTab,'ColumnName');
[nrows, ncols] = size(X);

% ========================= PLANTILLAS ================================

COL_TEMP = '<TD>_col_</TD>';
ROW_TEMP = '<TR>_row_</TR>';
HEADER_TEMP = '<TH>_header_</TH>';

HTML_TEMP = ['<html><head><title>_pagetitle_</title>_style_</head><body><font face="_fontname_">',...
    '<table>',...
    ' <caption>_tabletitle_</caption> _table_ </table></font> _footnote_ </body></html>'];

STYLE = ['<style>table{width:30%; padding: 5px; background-color: _bgcolor_;}',...
    'table,th,td{text-align: center; border: _borderwidth_px solid #dadada; border-collapse: collapse; border-spacing: 1px;}',...
    'th{background-color: #cacaca;}',...
    '</style>'];

HTML_TEMP = regexprep(HTML_TEMP,'_style_',STYLE);

FOOT_TEMP = ['<br><br><br><font face="Arial Narrow" color=#C0C0C0 size=2>',...
    'Published by: <cite>table2html</cite></font>'];

% ========================== ENCABEZADOS  =============================
if strcmp(colnames,'numbered')
    colnames = repmat('untitled|',1,ncols);
    remain = colnames;
    colnames = {};
    while 1
        [str,remain]=strtok(remain,'|');
        if isempty(str),break,end;
        colnames=[colnames str];
    end
end
rstr = WriteHeaders(colnames);
WriteTable(rstr);
web(filename,'-browser');

% =====================================================
    function rstr = WriteHeaders(headers)
        rstr = '';
        for k = 1:ncols
            rstr=[rstr,strrep(HEADER_TEMP,'_header_',headers{k})];
        end
    end

    function WriteTable(rstr)
        [path_,~,~] = fileparts(filename);
        if ~isempty(path_)
            if ~isdir(path_)
                mkdir(path_);
            end
        end
        
        fid=fopen(filename,'w');
        for i=1:nrows
            cstr='';
            for j=1:ncols
                if isa(X,'cell')
                    cstr = [cstr,strrep(COL_TEMP,'_col_',num2str(X{i,j})),' '];
                else
                    cstr = [cstr,strrep(COL_TEMP,'_col_',num2str(X(i,j))),' '];
                end
            end
            rstr = [rstr,strrep(ROW_TEMP,'_row_',cstr)];
        end
        WEB_PAGE = strrep(HTML_TEMP,'_table_',rstr);
        WEB_PAGE = regexprep(WEB_PAGE,{'_footnote_','_bgcolor_',...
            '_fontname_','_borderwidth_','_tabletitle_','_pagetitle_','_fontcolor_'},...
            {FOOT_TEMP,opts.BgColor,opts.FontName,opts.BorderWidth,...
            opts.TableTitle,opts.PageTitle,opts.FontColor});
        fprintf(fid,'%s',WEB_PAGE);
        fclose(fid);
    end

end