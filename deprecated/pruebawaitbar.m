h = waitbarc(0,'Starting...');
% hObjs = findobj(h);
% hOfPatch = findall(hObjs,'type','patch','-and','FaceColor','red');
% set(hOfPatch,'FaceColor','blue');
for i = 1:100
    str = [num2str(i),' %'];
    waitbarc(i/100,h,str);
%     set(hOfPatch,'FaceColor','blue');
    pause(0.01);
end
delete(h);