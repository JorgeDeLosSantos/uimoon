function SetProportion(obj,prop)
% Container/Close
% Close this container
%

try
    obj.proportion_ = prop;
catch err
    disp(err);
    % Nothing to do !!!
end

end