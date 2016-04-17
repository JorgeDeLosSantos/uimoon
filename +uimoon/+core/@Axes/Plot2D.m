function Plot2D(obj,X,Y,varargin)

plot(obj.hEUI, X, Y, varargin{:})

if ~isnan(X) & ~isnan(Y)
    set(obj.hEUI,'XLim',[min(X) max(X)],...
        'YLim',[min(Y) max(Y)]);
end

end