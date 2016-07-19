function SetLabels(obj,xlabel,ylabel,zlabel)
% Axes/SetLabels
% 
% Set labels for axes
%
if nargin < 4
    zlabel = '';
end

hXLabel = get(obj.hUI, 'XLabel'); % Get XLabel handle
hYLabel = get(obj.hUI, 'YLabel'); % Get YLabel handle
hZLabel = get(obj.hUI, 'ZLabel'); % Get ZLabel handle

set(hXLabel,'String',xlabel);
set(hYLabel,'String',ylabel);
set(hZLabel,'String',zlabel);
end
