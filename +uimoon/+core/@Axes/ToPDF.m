function ToPDF(obj,filename)

aux_fig = figure('Visible','off'); % Auxiliar figure
aux_ax = copyobj(obj.hAxes,aux_fig); % Auxiliar axes
saveas(aux_ax,filename,'pdf');
if ispc
    try
        winopen(filename);
    catch
        winopen([filename,'.pdf']);
    end
end
delete(aux_fig);
end