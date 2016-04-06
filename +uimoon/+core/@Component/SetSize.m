function SetSize(obj,width,height)

% Validando atributos 
validateattributes(width,{'numeric'},{'positive'});
validateattributes(height,{'numeric'},{'positive'});


old_pos = get(obj.hComp,'Position');
set(obj.hComp,'Position',[old_pos(1) old_pos(2) width height]);
end

