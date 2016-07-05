function Close(obj,varargin)
% Container/Close
% 
% Close (delete) this container
%
%
try
    delete(obj.hUI);
catch err
    disp(err);
end

end
