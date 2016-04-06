%
%             ================================================
%                        Autor: Jorge De Los Santos
%                    E-mail: delossantosmfq@gmail.com
%                  Blog : http://matlab-typ.blogspot.mx
%                                 Rev 0.0.1
%                             Fecha: 20/10/2014
%             ================================================
h = waitbar(0,'Starting...');
for k=1:10
    for i = 1:100
        str = [num2str(i),' %'];
        waitbar(i/100,h,str);
        pause(0.01);
    end
end