function p = GetParent(obj)
% Axes/GetParent
%
% Get the parent of the Axes container 

p = get(obj.hUI, 'Parent');
end