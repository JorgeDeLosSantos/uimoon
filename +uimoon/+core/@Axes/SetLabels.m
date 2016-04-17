function SetLabels(obj,xlabel,ylabel,zlabel)
% Axes/SetLabels
% 
% Set labels for axes
%
if nargin < 4
    zlabel = '';
end

hXLabel = get(obj.hEUI, 'XLabel'); % Get XLabel handle
hYLabel = get(obj.hEUI, 'YLabel'); % Get YLabel handle
hZLabel = get(obj.hEUI, 'ZLabel'); % Get ZLabel handle

set(hXLabel,'String',xlabel);
set(hYLabel,'String',ylabel);
set(hZLabel,'String',zlabel);
end
