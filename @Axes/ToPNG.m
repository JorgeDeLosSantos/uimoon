function ToPNG(obj,filename)

aux_fig = figure('Visible','off'); % Auxiliar figure
aux_ax = copyobj(obj.hAxes,aux_fig); % Auxiliar axes
saveas(aux_ax,filename,'png');
% if ispc
%     try
%         winopen(filename);
%     catch
%         winopen([filename,'.png']);
%     end
% end
delete(aux_fig);
end