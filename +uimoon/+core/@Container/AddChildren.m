function AddChildren(obj, varargin)
% Container/AddChildren
%
% Only append children to Children cell array (not set parent) 
%
for ii = 1:length(varargin)
    obj.Children = [obj.Children, {varargin{ii}}];
end
end
