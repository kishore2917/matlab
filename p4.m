[f,p] = uigetfile({'*.jpg;*.png;*.bmp'},'Select an Image');
I = imread(fullfile(p,f));

if size(I,3) == 3
    I = rgb2gray(I);
end

S = imgaussfilt(I,1);

H = [0 -1 0; -1 5 -1; 0 -1 0];
S2 = imfilter(I,H);

G = 1.5;
C = imadjust(I,[],[],G);

subplot(2,2,1), imshow(I), title('Original Image');
subplot(2,2,2), imshow(S), title('Gaussian Blur');
subplot(2,2,3), imshow(S2), title('Sharpened Image');
subplot(2,2,4), imshow(C), title('Gamma Corrected');
