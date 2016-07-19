function Add(obj,uic,proportion)
% Layout/Add
%
%
if nargin<3
    proportion = 0.1;
end


% Setting parent
try
    set(uic.hUI,    ...
        'Parent',    obj.hUI,...
        'Visible',   'on' );
catch err
    disp(err.message);
end

% Drawing
obj.Draw();
end