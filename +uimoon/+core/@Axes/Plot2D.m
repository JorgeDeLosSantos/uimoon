function Plot2D(obj,X,Y,varargin)

plot(obj.hUI, X, Y, varargin{:})

if ~isnan(X) & ~isnan(Y)
    set(obj.hUI,'XLim',[min(X) max(X)],...
        'YLim',[min(Y) max(Y)]);
end

end