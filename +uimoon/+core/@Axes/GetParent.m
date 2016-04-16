function p = GetParent(obj)
% Axes/GetParent
%
% Get the parent of the Axes container 

p = get(obj.hUICont, 'Parent');
end