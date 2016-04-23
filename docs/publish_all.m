clear;clc;
opts.format = 'html';
opts.stylesheet = 'style/uimoon_mxdom.xsl';
all_files = dir('*.m');
for ii = 1:length(all_files)
    if ~strcmpi(all_files(ii).name(1:end-2),mfilename)
        try
            publish(all_files(ii).name,opts);
        catch err
            disp(err.message);
        end
    end
end
web('html/index.html','-browser');
close all; clear all; clc;