function Add(obj,uic,proportion)
% Add
%
%
if nargin<3
    proportion = 0.1;
end
uic.SetProportion(proportion);
obj.children_ = [obj.children_, {uic}];
obj.childrenproportions_ = [obj.childrenproportions_, proportion];
try
    set(uic.hUI,    ...
        'Parent',    obj.hUI,...
        'Visible',   'on' );
catch err
    disp(err.message);
end
%obj.Draw();
end