function parent = GetParent(obj)
% Component/GetParent
%
% Return the parent of this object
%  
try
    parent = obj.Parent;
catch %#ok
    parent = get(obj.hUI, 'Parent');
end
end

