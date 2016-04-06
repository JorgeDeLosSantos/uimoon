function SetLabels(obj,xlabel,ylabel,zlabel)

if nargin < 4
    zlabel = '';
end

hXLabel = get(obj.hAxes,'XLabel'); % Get XLabel handle
hYLabel = get(obj.hAxes,'YLabel'); % Get YLabel handle
hZLabel = get(obj.hAxes,'ZLabel'); % Get ZLabel handle

set(hXLabel,'String',xlabel);
set(hYLabel,'String',ylabel);
set(hZLabel,'String',zlabel);

end