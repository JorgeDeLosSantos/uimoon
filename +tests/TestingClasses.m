classdef TestingClasses < tests.TestCase
    % Test for UIMOON 0.1.0
    % Author: Pedro Jorge De Los Santos
    % Project URL: https://github.com/JorgeDeLosSantos/uimoon
    % License: MIT License
    %
    % import uimoon.core.*
    % import uimoon.utils.*
    
    % Button
    methods
        function testButton(obj)
            bt = uimoon.core.Button('');
            obj.assertIsInstanceOf(bt,'uimoon.core.Button');
            bt.Destroy();
        end
        
        function testLabel(obj)
            bt = uimoon.core.Button('');
            obj.assertIsInstanceOf(bt,'uimoon.core.Button');
            bt.Destroy();
        end
        
        function testAxes(obj)
            bt = uimoon.core.Button('');
            obj.assertIsInstanceOf(bt,'uimoon.core.Button');
            bt.Destroy();
        end
        
    end
end
