function ToHTML(obj,filename)
% Axes/ToHTML
% 
% 
% 
% 
% 
% 

hwb = waitbar(0,'Validando...');
OutDir = 'axes2html';
[path_,file_,ext_] = fileparts(filename);
if ~isempty(file_) && ~isempty(ext_) && isempty(path_)
    dest = OutDir;
else
    dest = path_;
end
if ~exist(dest,'dir')
    mkdir(dest);
end
waitbar(0.2,hwb,'Generando imagen...');
obj.toPNG('temp_img.png');
waitbar(0.4,hwb,'Copiando plantilla...');
copyfile('@Axes/private/template.m',[dest,'/',file_,'.m']);
txt = fileread([dest,'/',file_,'.m']);
txt = regexprep(txt,'_FILENAME_',file_);
fid = fopen([dest,'/',file_,'.m'],'w');
fprintf(fid,'%s',txt);
fclose(fid);
waitbar(0.7,hwb,'Generando HTML...');
opts.format = 'html';
opts.evalCode = false;
opts.outputDir = dest;
publish([dest,'/',file_,'.m'],opts);
waitbar(0.9,hwb,'Moviendo imagen...');
movefile('temp_img.png',[dest,'/',file_,'.PNG']);
waitbar(1,hwb,'Finalizado');
delete(hwb);
web([dest,'/',file_,ext_],'-browser');
end