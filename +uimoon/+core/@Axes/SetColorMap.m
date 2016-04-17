function SetColorMap(obj,cmap)
% Axes/SetColorMap
%
try
    set(obj.GetParent(),'Colormap',cmap);
catch err
    disp(err.message);
end
end