function r = GetText(obj,fmt)
%
%
%
%

if nargin < 2
    fmt = 'string';
end

try
    str = get(obj.hComp, 'String');
catch %#ok
    warning('Propiedad no disponible para este componente');
    str = ''; % empty string
end

if strcmpi(fmt,'string')
    r = str; % as is
elseif strcmpi(fmt,'double')
    r = str2double(str);
elseif strcmpi(fmt,'int')
    r = int32(eval(str));
else
    r = str;
end

end