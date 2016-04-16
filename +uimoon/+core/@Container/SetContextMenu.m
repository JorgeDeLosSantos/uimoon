function SetContextMenu(obj,ctxmenu)

if ~isa(ctxmenu,'ContextMenu')
    error('Argumento incorrecto');
end

set(obj.hUI,'UIContextMenu',ctxmenu.hCtx);

end