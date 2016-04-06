function SetCallback(obj,fun)
%
%
try
    set(obj.hComp,'Callback',fun);
catch %#ok<CTCH>
    MessageBox('###########','GUIOOD Toolbox','normal');
end
end