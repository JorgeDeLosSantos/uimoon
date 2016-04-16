function Add(obj,uic,proportion)
% Add
%
%
if nargin<3
    proportion = 0.1;
end
uic.SetProportion(proportion);
obj.children_ = [obj.children_, {child}];
obj.childrenproportions_ = [obj.childrenproportions_, prop];
try
    set(child.hComp,    ...
        'Parent',    obj.hCont,...
        'Visible',   'on' );
catch
    try
        set(child.hCont,    ...
            'Parent',    obj.hCont,...
            'Visible',   'on' );
    catch
        set(child.hTable,    ...
            'Parent',    obj.hCont,...
            'Visible',   'on' );
    end
end
end