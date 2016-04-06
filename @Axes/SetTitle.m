function SetTitle(obj,title)
% Axes/SetTitle

hTitle = get(obj.hAxes,'Title');
set(hTitle,'String',title);
end