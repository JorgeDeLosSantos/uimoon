function AddSpace(obj,space,tag)
% Add
%
%
if nargin == 1
    space = 0.1;
    tag = '';
elseif nargin == 2
    tag = '';
end

uisp = uimoon.core.Panel();
uisp.SetProportion(space);
obj.Children = [obj.Children, {uisp}];
obj.ChildrenProportions = [obj.ChildrenProportions, space];
try
    set(uisp.hUI,    ...
        'Parent',    obj.hUI,...
        'Visible',   'on',...
        'Tag', tag);
catch err
    disp(err.message);
end
end