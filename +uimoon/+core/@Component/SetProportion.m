function SetProportion(obj,prop)
% Component/SetProportion
% Set component proportion
%

try
    setappdata(obj.hComp,'Proportion',prop);
catch err
    disp(err);
    % Nothing to do !!!
end

end