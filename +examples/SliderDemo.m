function SliderDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
import uimoon.core.*

app = Frame('Slider Demo');
bx = BoxLayout('v',1);

for i=1:7
    sld(i) = Slider(0,10,randi(10));
    sld(i).SetCallback(@Cllbck_fcn);
    bx.Add(sld(i), 1/7);
end
app.SetLayout(bx);

    function Cllbck_fcn(varargin)
        import uimoon.utils.* % For Finder
        all_sliders = Finder.FindByClass('uimoon.core.Slider');
        all_values = arrayfun(@(x) x.GetValue(),all_sliders{1},'un',0);
        this_sum = sum(cell2mat(all_values));
        fprintf('Sum = %g \n\n',this_sum);
    end
end