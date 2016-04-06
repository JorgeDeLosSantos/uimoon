function CanvasDemo
app = Frame('Canvas Demo',[400 300]);
app.SetLayout('horizontal',5);

% Canvas
cv1 = Canvas();
cv2 = Canvas();
app.AddMany(cv1,cv2);

% Draw ...
for i=1:10
    cv1.DrawLine(0,0,180,i*20,'r');
    cv2.DrawCircle(200,100,i*10,'g');
end

end