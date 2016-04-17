function SetTitle(obj,title)
% Axes/SetTitle

hTitle = get(obj.hEUI, 'Title');
set(hTitle, 'String', title);
end