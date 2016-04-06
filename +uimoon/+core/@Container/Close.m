function Close(obj,varargin)
% Container/Close
% Close this container
%

try
    delete(obj.hCont);
catch err
    disp(err);
    % Nothing to do !!!
end

end