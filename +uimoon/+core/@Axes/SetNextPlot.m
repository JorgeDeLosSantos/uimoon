function SetNextPlot(obj,nxt)
% Axes/SetNextPlot
%
%
%
%       nxt   -->    'replace' | 'add' | 'replacechildren'
%
%
% See also: settitle, setlabels
%
if ~any(strcmpi(nxt,{'replace','add','replacechildren'}))
    error('Opción incorrecta');
end

set(obj.hAxes,'NextPlot',nxt);

end