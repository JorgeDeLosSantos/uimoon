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

set(obj.hTable,'FontName',font.name_,...
    'FontSize',font.size_,...
    'FontWeight',font.weight_);
end