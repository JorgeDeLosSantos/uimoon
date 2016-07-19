function ToHTML(obj,filename)
% Axes/ToHTML
% 
% 
% 
%
% Don't use!
%

% Incomplete feature
warning('Incomplete feature');

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
waitbar(0.2,hwb,'Generating image...');
obj.toPNG('temp_img.png');
waitbar(0.4,hwb,'Copying template...');
copyfile('@Axes/private/template.m',[dest,'/',file_,'.m']);
txt = fileread([dest,'/',file_,'.m']);
txt = regexprep(txt,'_FILENAME_',file_);
fid = fopen([dest,'/',file_,'.m'],'w');
fprintf(fid,'%s',txt);
fclose(fid);
waitbar(0.7,hwb,'Generating HTML...');
opts.format = 'html';
opts.evalCode = false;
opts.outputDir = dest;
publish([dest,'/',file_,'.m'],opts);
waitbar(0.9,hwb,'Moving imaage...');
movefile('temp_img.png',[dest,'/',file_,'.PNG']);
waitbar(1,hwb,'Done');
delete(hwb);
web([dest,'/',file_,ext_],'-browser');
end