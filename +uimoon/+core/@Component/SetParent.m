function SetParent(obj,varargin)
% Component/SetParent
%
% Set the object parent
% 
if nargin < 2
    set(obj.hUI,'Parent',obj.DEFAULT_PARENT);
    obj.Parent = obj.DEFAULT_PARENT;
else
    if isa(varargin{1},'uimoon.core.Frame')
        cpr = varargin{1};
        parent = cpr.hUI;
        set(obj.hUI,'Parent',parent);
        obj.Parent = cpr;
    end
end
end
