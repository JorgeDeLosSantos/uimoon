function ToExcel(obj,filename,bool_open)
% Table/ToExcel
% 
% Exporta el contenido de una tabla (Table) a una 
% hoja de calculo Microsoft Excel (TM)
%
%
% Sintaxis:
%
%           obj.ToExcel(filename)
%
%
if nargin < 3
	bool_open = true;
end
X = obj.GetData(); % Datos 
H = obj.GetHeaders(); % Encabezados
hwb = waitbar(0,'Exportando datos');
waitbar(0.3,hwb);
xlswrite(filename,[H';X]);
waitbar(0.8,hwb);
waitbar(1,hwb);
delete(hwb);

if bool_open
	winopen(filename);
end

end