[f,p] = uigetfile({'*.jpg;*.png;*.bmp'},'Select an Image');
I = imread(fullfile(p,f));

G = im2gray(I);
D = imbilatfilt(G);
N = medfilt2(D,[3 3]);
F = regionfill(N,N < 5);

subplot(2,2,1), imshow(I), title('Original Image');
subplot(2,2,2), imshow(D), title('Bilateral Filter');
subplot(2,2,3), imshow(N), title('Median Filter');
subplot(2,2,4), imshow(F), title('Filled Image');
