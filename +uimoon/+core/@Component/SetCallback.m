function SetCallback(obj,fun)
%
%
try
    set(obj.hComp,'Callback',fun);
catch %#ok
    MessageBox('###########','GUIOOD Toolbox','normal');
end
end