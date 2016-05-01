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
obj.children_ = [obj.children_, {uisp}];
obj.childrenproportions_ = [obj.childrenproportions_, space];
try
    set(uisp.hUI,    ...
        'Parent',    obj.hUI,...
        'Visible',   'on',...
        'Tag', tag);
catch err
    disp(err.message);
end
end