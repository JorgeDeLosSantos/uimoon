classdef GException < MException
    % GException
    %
    
    properties (Dependent = true)
        % ... pass
    end
    
    methods
        function obj = GException(varargin)
            obj.identifier = 'a:b';
            obj.message = 'HoLa';
            obj.cause = '';
            obj.stack = '';
        end
    end
end

