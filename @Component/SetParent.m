function SetParent(obj,varargin)
if nargin < 2
    set(obj.hComp,'Parent',obj.DEFAULT_PARENT);
    obj.parent_ = obj.DEFAULT_PARENT;
else
    if isa(varargin{1},'Frame')
        cpr = varargin{1};
        parent = cpr.hCont;
        set(obj.hComp,'Parent',parent);
        obj.parent_ = parent;
    end
end
end