function SetColor(obj,color)
% Axes/SetColor
%

try
    set(obj.hUI,'Color',color);
catch err
    error('Invalid color');
end
end