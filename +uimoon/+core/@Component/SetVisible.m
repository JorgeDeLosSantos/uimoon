function SetVisible(obj,status)
%
%
%

if status
    status = 'on';
else
    status = 'off';
end
set(obj.hUI, 'Visible', status);
end

