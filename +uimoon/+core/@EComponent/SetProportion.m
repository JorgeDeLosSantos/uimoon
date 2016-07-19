function SetProportion(obj,prop)
% Component/SetProportion
%
% Set component proportion
%

try
    obj.Proportion = prop;
catch err
    disp(err);
    % Nothing to do !!!
end
end