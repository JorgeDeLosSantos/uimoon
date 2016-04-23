function AddChildren(obj, varargin)
% Container/AddChildren
%
% Only append children to children_ cell array (not set parent) 
%
for ii = 1:length(varargin)
    obj.children_ = [obj.children_, {varargin{ii}}];
end
end
