function SetProportion(obj,prop)
% Container/Close
% Close this container
%

try
    obj.Proportion = prop;
catch err
    disp(err);
    % Nothing to do !!!
end

end