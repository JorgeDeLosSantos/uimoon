function ToPDF(obj,filename)

aux_fig = figure('Visible','off'); % Auxiliar figure
aux_ax = copyobj(obj.hUI,aux_fig); % Auxiliar axes
saveas(aux_ax,filename,'pdf');
if ispc
    try
        winopen(filename);
    catch
        try
            winopen([filename,'.pdf']);
        catch
            % pass
        end
    end
end
delete(aux_fig);
end