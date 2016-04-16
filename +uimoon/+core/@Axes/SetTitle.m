function SetTitle(obj,title)
% Axes/SetTitle

hTitle = get(obj.hUI, 'Title');
set(hTitle, 'String', title);
end