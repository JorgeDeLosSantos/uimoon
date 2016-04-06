classdef Table < handle
    % Table
    % 
	% 
    
    properties
        hTable;
        data_;
        headers_;
    end
    
    methods
        function obj= Table(data,headers)
            if ~isa(data,'cell')
				% Si los datos introducidos corresponden a una matriz
				% tipo numérico, entonces habrá de realizarse la 
				% conversión a tipo cell para mejorar la 'compatibilidad'
				% al trabajar con los datos obtenidos de un objeto de 
				% la clase Table.
                data = num2cell(data); 
            end
            obj.hTable = uitable('Data',data,...
                'ColumnName',headers);
            obj.data_ = data;
            obj.headers_ = headers;
        end
    end
    
end

