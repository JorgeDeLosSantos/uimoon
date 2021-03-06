function Sphere(obj,cx,cy,cz,r,varargin)


[X,Y,Z] = sphere;
h = surf(obj.hUI,r*X + cx,r*Y + cy,r*Z + cz);
set(obj.hUI,'XLim',[min(X(:)) max(X(:))]*r + cx,...
    'YLim',[min(Y(:)) max(Y(:))]*r + cy,...
    'ZLim',[min(Z(:)) max(Z(:))]*r + cz);
end