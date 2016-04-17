function SetGrid(obj,state)
% Axes/SetGrid
%
%   
%  state     -->    true | false
%  
%  Where:
%
%        true    -->    true  | 'on'  |  1
%        false   -->    false | 'off' |  0

if isequal(state,true) || isequal(state,'on') || isequal(state,1)
    state = 'on';
else
    state = 'off'; % Otherwise
end
grid(obj.hEUI, state);
end