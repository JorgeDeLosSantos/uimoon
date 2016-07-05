function SetSize(obj,width,height)

% Attributes
validateattributes(width,{'numeric'},{'positive'});
validateattributes(height,{'numeric'},{'positive'});

% Get current position
old_pos = get(obj.hUI,'Position');

% Update width and height 
set(obj.hUI,'Position',[old_pos(1) old_pos(2) width height]);

end

