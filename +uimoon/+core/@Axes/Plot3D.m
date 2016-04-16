function Plot3D(obj,X,Y,Z,varargin)

surf(X,Y,Z,varargin{:});
set(obj.hUI,'XLim',[min(X(:)) max(X(:))],...
    'YLim',[min(Y(:)) max(Y(:))],...
    'ZLim',[min(Z(:)) max(Z(:))]);
view(3);
end