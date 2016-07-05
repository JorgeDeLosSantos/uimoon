function r = GetText(obj,fmt)
% Component/GetText
%
% Get string from component
%
% 

if nargin < 2
    fmt = 'string'; % String type default
end

try
    str = get(obj.hUI, 'String');
catch %#ok
    warning('Unavailable property for this component');
    str = ''; % empty string
end

% What type? (String / Double / Integer)
if strcmpi(fmt,'string')
    r = str; % as is
elseif strcmpi(fmt,'double')
    % Double fmt
    r = str2double(str);
elseif strcmpi(fmt,'int')
    % Return 32-bits integer
    r = int32(eval(str));
else
    % Otherwise
    r = str;
end

end
