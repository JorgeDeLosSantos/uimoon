function SetContextMenu(obj,ctxmenu)

if ~isa(ctxmenu,'ContextMenu')
    error('Argumento incorrecto');
end

set(obj.hCont,'UIContextMenu',ctxmenu.hCtx);

end