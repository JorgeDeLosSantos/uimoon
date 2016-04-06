function Plot2D(obj,X,Y,varargin)

plot(obj.hAxes,X,Y,varargin{:})

if ~isnan(X) & ~isnan(Y)
    set(obj.hAxes,'XLim',[min(X) max(X)],...
        'YLim',[min(Y) max(Y)]);
end

end