function SetFont(obj,font)
% Component/SetFont
%
% Input arguments:
%
%           font   -    Font class
%

if nargin ~= 2
    warning('Invalid input arguments');
end

set(obj.hUI,'FontName',font.Name,...
    'FontSize',font.Size,...
    'FontWeight',font.Weight);
end