function SliderDemo
app = Frame('Slider Demo');
app.SetLayout('vertical',2);

for i=1:5
    sld(i) = Slider(0,10,randi(10));
    sld(i).SetCallback(@Cllbck_fcn);
    app.Add(sld(i));
end

    function Cllbck_fcn(~,~)
        all_sliders = util.FindByClass('Slider');
%         assignin('base','all_sliders',all_sliders);
        all_values = arrayfun(@(x) x.GetValue(),all_sliders{1},'un',0);
        suma = sum(cell2mat(all_values));
        fprintf('Suma = %d \n\n',suma);
    end
end