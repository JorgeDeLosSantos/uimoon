function AddSpace(obj,space)
% Add
%
%
if nargin<2
    space = 0.1;
end
uisp = uimoon.core.Panel();
uisp.SetProportion(space);
obj.AddChild(uisp, space);
obj.SetLayout(obj.GetLayout());
end