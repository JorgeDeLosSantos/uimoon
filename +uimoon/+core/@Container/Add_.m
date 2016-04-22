function Add(obj,uic,proportion)
% Add
%
%
if nargin<3
    proportion = 0.1;
end
uic.SetProportion(proportion);
obj.AddChild(uic,proportion);
obj.SetLayout(obj.GetLayout());
end