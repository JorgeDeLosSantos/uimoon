function AddChild(obj,child,prop)
% Container/GetChildrens
%
%
% Return all children

obj.children_ = [obj.children_, {child}];
obj.childrenproportions_ = [obj.childrenproportions_, prop];

% Child type
isaxes = isa(child,'uimoon.core.Axes');
isbitmap = isa(child,'uimoon.core.StaticBitmap');
iscanvas = isa(child,'uimoon.core.Canvas');
try
    set(child.hUI,    ...
        'Parent',    obj.hUI,...
        'Visible',   'on' );
catch err
    disp(err.message);
end
end