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
    else
        cpr = varargin{1};
        try
            set(obj.hUI, 'Parent', cpr.hUI);
            obj.Parent = cpr.hUI;
        catch %#ok
            if ishandle(cpr)
                % A handle
                set(obj.hUI, 'Parent', cpr);
                obj.Parent = cpr;
            else
                % Default parent
                set(obj.hUI,'Parent',obj.DEFAULT_PARENT);
                obj.Parent = obj.DEFAULT_PARENT;
            end
        end
    end
end
end
