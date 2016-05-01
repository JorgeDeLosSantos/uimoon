function SetText(obj,txt)
%
%
%
%

try
    set(obj.hUI, 'String', txt);
catch %#ok
    warning('Unavailable property for this component');
end
end