function SetCallback(obj,fun)
% Component/SetCallback 
%
% 
%
%

try
    set(obj.hUI,'Callback',{fun,obj});
catch err
    disp(err);
end
end
