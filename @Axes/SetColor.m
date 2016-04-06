function SetColor(obj,color)
% Axes/SetColor
%


try
    set(obj.hAxes,'Color',color);
catch
    error('Color incorrecto');
end
end