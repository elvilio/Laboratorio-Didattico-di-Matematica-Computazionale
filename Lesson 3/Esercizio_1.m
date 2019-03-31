canvas = zeros(1000,1000,3);
color = zeros(1000,1000,3);
color(:,:,1) = ones(1000,1000);

% cerchio
cent = [100,150];
length_object = 70;

[columnsInImage rowsInImage] = meshgrid(1:size(canvas,1), 1:size(canvas,2));
circlePixels = (rowsInImage - cent(1)).^2 + (columnsInImage - cent(2)).^2 <= length_object.^2;
% uso una mesh a valori booleani per indicare dove devo cambiare il colore
% al canvas
circlePixels3d=repmat(circlePixels,[1 1 3]);

canvas((circlePixels3d)) = color((circlePixels3d));
clear("circlePixels", "circlePixels3d");

% quadrato e rettangolo
canvas(500:599,400:599,1:2)=ones(100,200,2);
canvas(900:949,900:949,2)=ones(50,50);

imshow(canvas);
clear("canvas", "cent", "color", "columnsInImage", "length_object", "rowsInImage")