function SetNextPlot(obj,nxt)
% Axes/SetNextPlot
%
%
%
%       nxt   -->    'replace' | 'add' | 'replacechildren'
%
%
% See also: SetTitle, SetLabels
%
if ~any(strcmpi(nxt,{'replace','add','replacechildren'}))
    error('Invalid option');
end
set(obj.hUI, 'NextPlot', nxt);
end