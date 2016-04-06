function p = GetParent(obj)

% hComp  --->  Panel padre
% p      --->  Figure type

p = get(obj.hComp,'Parent');
end