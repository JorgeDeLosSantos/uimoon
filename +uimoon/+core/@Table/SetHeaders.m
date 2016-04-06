function SetHeaders(obj,headers)
% Table/SetHeaders
% 
% 
% 
if ~isa(headers,'cell')
	try
		headers = num2str(headers);
	catch
		error('Los encabezados deben ser un cell array de strings');
	end
end

set(obj.hTable,'ColumnName',headers);
end