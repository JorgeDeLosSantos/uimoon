function SetContextMenu(obj,ctxmenu)

if ~isa(ctxmenu,'ContextMenu')
    error('Argumento incorrecto');
end

set(obj.hComp,'UIContextMenu',ctxmenu.hCtx);

end