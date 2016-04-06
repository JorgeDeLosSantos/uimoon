function SliderDemo
% Demo for UIMOON 0.1.0
% Author: Pedro Jorge De Los Santos
% Project URL: https://github.com/JorgeDeLosSantos/uimoon
% License: MIT License
%
app = Frame('Slider Demo');
app.SetLayout('vertical',2);

for i=1:5
    sld(i) = Slider(0,10,randi(10));
    sld(i).SetCallback(@Cllbck_fcn);
    app.Add(sld(i));
end

    function Cllbck_fcn(~,~)
        all_sliders = util.FindByClass('Slider');
        disp(all_sliders)
        all_values = arrayfun(@(x) x.GetValue(),all_sliders{1},'un',0);
        suma = sum(cell2mat(all_values));
        fprintf('Suma = %g \n\n',suma);
    end
end