function StaticBitmapDemo
app = Frame('');
X1 = imread('saturn.png');
bmp1 = StaticBitmap(X1);
bmp2 = StaticBitmap(X1);
bmp3 = StaticBitmap(X1);
app.AddMany(bmp1, bmp2, bmp3);
end