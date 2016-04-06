function FrameDemo
app = Frame('App');
app.Centre(true)
app.Resize(false);
app.SetColor(rand(1,3));
app.SetTitle('Example');
app.SetIcon('icono.png');
end