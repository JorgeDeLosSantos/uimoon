function SetData(obj,data)
% Table/SetData
% 
% 
% 
% 

if isa(data,'double')
	data = num2cell(data);
end

warndlg('Método en revisión ....');
set(obj.hTable,'Data',data);
end