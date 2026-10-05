[f,p] = uigetfile({'*.jpg;*.png;*.bmp'},'Select an Image');
I = imread(fullfile(p,f));

figure;
subplot(2,3,1), imshow(I), title('Original');
subplot(2,3,2), imshow(imtranslate(I,[50 30])), title('Translated');
subplot(2,3,3), imshow(imrotate(I,30)), title('Rotated');
subplot(2,3,4), imshow(imcrop(I,[100 100 150 150])), title('Cropped');
