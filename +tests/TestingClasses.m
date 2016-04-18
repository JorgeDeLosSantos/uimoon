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
            bt = uimoon.core.Button('Button');
            obj.assertIsInstanceOf(bt,'uimoon.core.Button');
            bt.Destroy();
        end
        
        function testLabel(obj)
            lbl = uimoon.core.Label('Label');
            obj.assertIsInstanceOf(lbl,'uimoon.core.Label');
            lbl.Destroy();
        end
        
        function testAxes(obj)
            ax = uimoon.core.Axes();
            obj.assertIsInstanceOf(ax,'uimoon.core.Axes');
            ax.Destroy();
        end
        
        function testCanvas(obj)
            cv = uimoon.core.Canvas();
            obj.assertIsInstanceOf(cv,'uimoon.core.Canvas');
            cv.Destroy();
        end
        
        function testStaticBitmap(obj)
            img = NaN(100);
            stbmp = uimoon.core.StaticBitmap(img);
            obj.assertIsInstanceOf(stbmp,'uimoon.core.StticBitmap');
            stbmp.Destroy();
        end
        
    end
end
