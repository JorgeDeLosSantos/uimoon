function SetVisible(obj,status)
% % validateattributes(status,{'numeric'},{'positive'});
if status
    status = 'on';
else
    status = 'off';
end
set(obj.hComp, 'Visible', status);
end

