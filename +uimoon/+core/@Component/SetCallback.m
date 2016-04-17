function SetCallback(obj,fun)
%
%
try
    set(obj.hUI,'Callback',{fun,obj});
catch err
    disp(err);
   % MessageBox('###########','GUIOOD Toolbox','normal');
end
end