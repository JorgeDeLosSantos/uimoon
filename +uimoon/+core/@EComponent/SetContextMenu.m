function SetContextMenu(obj,ctxmenu)

if ~isa(ctxmenu,'uimoon.core.ContextMenu')
    error('Invalid Component');
end

set(obj.hUI,'UIContextMenu',ctxmenu.hUI);
end