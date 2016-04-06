clear;clc;
% "Installing" (added to path) uimoon toolbox
UIMOON_DIR = strrep(cd,filesep,['\',filesep]);

starting_msg = sprintf('Installing UIMOON Toolbox ...\n');
added_msg = sprintf('UIMOON dir (%s) was added to MATLAB search path...\n\n',UIMOON_DIR);
end_msg = 'Please visit <a href="https://github.com/JorgeDeLosSantos/uimoon">UIMOON Page</a> for more information.';

fprintf(starting_msg);

% Add current dir to pah
addpath(UIMOON_DIR,'-end');

fprintf(added_msg);
disp(end_msg);