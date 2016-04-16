function SetData(obj,data)
% Table/SetData
% 
% 
% 
% 

if isa(data,'double')
	data = num2cell(data);
end

warning('In development, take care...');
set(obj.hUI,'Data',data);
end