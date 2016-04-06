function varargout = waitbarc(varargin)

if nargin==2
    value = varargin{1};
    msg = varargin{2};
    hOut = createWB(value, msg);
elseif nargin==3
    value = varargin{1};
    hWB = varargin{2};
    msg = varargin{3};
    hOut = updateWB(value, hWB, msg);
end

if nargin > 0
    varargout{1} = hOut;
end

    function hOut = createWB(value, msg)
        hOut = waitbar(value, msg);
        hObjs = findobj(hOut);
        hOfPatch = findall(hObjs,'type','patch','-and','FaceColor','red');
        set(hOfPatch,'FaceColor','b');
    end

    function hOut = updateWB(value, hWB, msg)
        waitbar(value, hWB, msg);
        hOut = hWB;
    end

end