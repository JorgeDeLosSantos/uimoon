function Close(obj,varargin)
% Container/Close
% Close this container
%

try
    delete(obj.hUI);
catch err
    disp(err);
    % Nothing to do !!!
end

end