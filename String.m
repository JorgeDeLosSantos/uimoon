classdef String < handle
    
    properties
    end
    
    methods (Static)
        function s = Split(cad,delimiter)
            % "Partición" de una cadena
            if nargin==1
                % Usar espacio como delimitador en caso
                % de no especificarse de forma explícita.
                delimiter=' ';
            end
            if isnumeric(cad) % Deprecated
                % Hacer la conversión si se tiene una entrada numérica
                cad=num2str(cad);
            end
			
			s = regexp(cad,['\',delimiter],'split'); % (0.1.1) --> Rev --> Sust. while loop
        end
        
        function s = ToLower(str)
            % Lower case
            s = lower(str);
        end
        
        function s = ToUpper(str)
            % Upper case
            s = upper(str);
        end
        
    end
    
end

