function SetVisible(obj,status)
% % validateattributes(status,{'numeric'},{'positive'});
if status
    status = 'on';
else
    status = 'off';
end
set(obj.hUI, 'Visible', status);
end

