function SetColor(obj,color)
% Axes/SetColor
%

try
    set(obj.hAxes,'Color',color);
catch err
    error('Invalid color');
end
end