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
    error('Opci�n incorrecta');
end

set(obj.hAxes,'NextPlot',nxt);

end