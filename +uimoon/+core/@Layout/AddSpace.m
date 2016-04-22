function AddSpace(obj,space)
% Add
%
%
if nargin<2
    space = 0.1;
end

uisp = uimoon.core.Panel();
uisp.SetProportion(space);
obj.children_ = [obj.children_, {uisp}];
obj.childrenproportions_ = [obj.childrenproportions_, space];
try
    set(uisp.hUI,    ...
        'Parent',    obj.hUI,...
        'Visible',   'on' );
catch err
    disp(err.message);
end
end