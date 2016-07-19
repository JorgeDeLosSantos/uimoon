classdef App_Class < uimoon.core.Frame
    % Demo for UIMOON 0.1.0
    % Author: Pedro Jorge De Los Santos
    % Project URL: https://github.com/JorgeDeLosSantos/uimoon
    % License: MIT License
    %
    
    properties
        bx;
        pw;
        bt;
    end
    
    methods
        function obj = App_Class()
            obj@uimoon.core.Frame('App 01',[200,100]);
            obj.Center();
            obj.initComponents();
        end
        
        function initComponents(obj)
            import uimoon.core.*;
            obj.bx = BoxLayout('v',2);
            obj.pw = PasswordField();
            obj.bt = Button('Go!!!');
            obj.bt.SetCallback(@obj.verificar);
            obj.bx.Add(obj.pw,0.45);
            obj.bx.Add(obj.bt,0.45);
            obj.SetLayout(obj.bx);
        end
        
        function verificar(obj,varargin)
            import uimoon.core.*
            passw_real = '123';
            passw_intro = obj.pw.GetPassword();
            if strcmp(passw_real,passw_intro)
                MessageBox('Correct password','UIMOON Demo','info');
                obj.Close()
            else
                MessageBox('Invalid password, try again','UIMOON Demo','error');
            end
        end
    end
end