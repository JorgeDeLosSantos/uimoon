function Add(obj,uic)
% Add
%
%

try
    set(uic.hComp,    ...
        'Parent',    obj.hCont,...
        'Visible',   'on' );
catch
    try
        set(uic.hCont,    ...
            'Parent',    obj.hCont,...
            'Visible',   'on' );
    catch
        set(uic.hTable,    ...
            'Parent',    obj.hCont,...
            'Visible',   'on' );
    end
end
obj.SetLayout(obj.GetLayout());
end