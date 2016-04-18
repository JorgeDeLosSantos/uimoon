function Destroy(obj)
% GetParent 
%
% 
% 
try
    pr = get(obj.hUI,'Parent');
    delete([obj.hUI, pr]);
catch err
    disp(err.message);
end
end

