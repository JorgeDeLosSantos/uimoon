function SetHeaders(obj,headers)
% Table/SetHeaders
% 
% 
% 
if ~isa(headers,'cell')
	try
		headers = num2str(headers);
	catch
		error('Headers must be a cell array of strings');
	end
end

set(obj.hUI,'ColumnName',headers);
end