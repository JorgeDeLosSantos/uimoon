classdef TestCase < handle
    %
    %
    %
    properties
        ntest;
        nfailed_test;
        npassed_test;
        tests = struct();
    end
    
    methods
        function obj = TestCase
            obj.ntest = 0;
            obj.nfailed_test = 0;
            obj.npassed_test = 0;
        end
        
        function addPassedTest(obj)
            obj.npassed_test = obj.npassed_test + 1;
            obj.print('Passed test');
        end
        
        function addFailedTest(obj)
            obj.nfailed_test = obj.nfailed_test + 1;
            obj.print(2,'Failed Test');
        end
        
        function addTest(obj)
            obj.ntest = obj.ntest + 1;
        end
        
        function assertTrue(obj,condition)
            obj.addTest();
            if condition
                obj.addPassedTest();
            else
                obj.addFailedTest();
            end
        end
        
        function assertFalse(obj,condition)
            obj.addTest();
            if ~condition
                obj.addPassedTest();
            else
                obj.addFailedTest();
            end
        end
        
        function assertEqual(obj,one,two)
            obj.addTest();
            if isequal(one,two)
                obj.addPassedTest();
            else
                obj.addFailedTest();
            end
        end
        
        function assertIsInstanceOf(obj,inst,this_class)
            obj.addTest();
            if isa(inst,this_class)
                obj.addPassedTest();
            else
                obj.addFailedTest();
            end
        end
        
        function runTest(obj)
            all_methods = methods(obj);
            for ii = 1:length(all_methods)
                if regexp(all_methods{ii},'test\w*')
                    fprintf('Running %s test\n',all_methods{ii});
                    eval(sprintf('obj.%s',all_methods{ii}))
                end
            end
            obj.printReport();
        end
        
        function disp(obj)
            disp(class(obj));
        end
        
        function printReport(obj)
            ntest = obj.ntest; % all tests
            passed = obj.npassed_test; % Number of passed tests
            failed = obj.nfailed_test; % Number of failed tests
            fprintf('\n\n%g tests performed\n\n',ntest);
            if isequal(passed,ntest)
                fprintf('All tests passed -> OK\n');
            else
                fprintf('%g tests failed\n',failed);
            end
        end
        
        function print(obj,varargin)
            if nargin>2
                flg = varargin{1};
                str = varargin{2};
            else
                flg = 1;
                str = varargin{1};
            end
            fprintf(flg,'%s\n',str);
        end
    end
    
end

