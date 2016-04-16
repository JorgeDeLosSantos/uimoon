function SetParent(obj,varargin)
if nargin < 2
    set(obj.hUI,'Parent',obj.DEFAULT_PARENT);
    obj.parent_ = obj.DEFAULT_PARENT;
else
    if isa(varargin{1},'uimoon.core.Frame')
        cpr = varargin{1};
        parent = cpr.hUI;
        set(obj.hUI,'Parent',parent);
        obj.parent_ = cpr;
    end
end
end