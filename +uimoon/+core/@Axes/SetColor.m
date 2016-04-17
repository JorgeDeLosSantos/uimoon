function SetColor(obj,color)
% Axes/SetColor
%

try
    set(obj.hEUI,'Color',color);
catch err
    error('Invalid color');
end
end