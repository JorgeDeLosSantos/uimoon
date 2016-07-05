clear;clc;
% "Installing" (adding to MATLAB search path) uimoon toolbox
UIMOON_DIR = strrep(cd,filesep,['\',filesep]);

starting_msg = sprintf('Installing UIMOON Toolbox ...\n');
added_msg = sprintf('UIMOON dir (%s) was added to MATLAB search path...\n\n',UIMOON_DIR);
end_msg = 'Please visit <a href="https://github.com/JorgeDeLosSantos/uimoon">UIMOON Page</a> for more information.';

fprintf(starting_msg);
% Add current dir to pah
addpath(UIMOON_DIR,'-end');

% Open the documentation
try
    web('docs/html/index.html','-browser');
catch %#ok
    warning('Help files not found');
end

fprintf(added_msg);
disp(end_msg);

%% Warning > Development version

warning('This is a pre-alpha development version, take care. Please report bugs to the URL repository.')