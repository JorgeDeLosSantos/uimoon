classdef Finder
    % Finder class
    
    properties
    end
    
    methods (Static=true)
        function hObjs = FindByClass(cl)
            if ~isa(cl,'char')
                error('Input argument must be string');
            end
            all_objs = evalin('caller','whos');
            k = 1;
            hObjs = [];
            for i=1:length(all_objs)
                if strcmp(all_objs(i).class,cl)
                    hObjs{k} = evalin('caller',all_objs(i).name); %#ok
                    k = k + 1;
                end
            end
        end
        
%         function hObjs = FindByName(name) % ¿why?
%             all_objs = evalin('caller','whos');
%             k = 1;
%             hObjs = [];
%             for i=1:length(all_objs)
%                 if strcmp(all_objs(i).name,name)
%                     hObjs{k} = evalin('caller',all_objs(i).name); % 
%                     k = k + 1;
%                 end
%             end
%         end
    end
end

