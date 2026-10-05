[f,p] = uigetfile({'*.jpg;*.png;*.bmp'},'Select an image');
I = imread(fullfile(p,f));

H = rgb2hsv(I);
H = H(:,:,1);

M = H < 0.05 | H > 0.95;

S = I;
S(repmat(~M,[1 1 3])) = 0;

G = rgb2gray(I);
G = cat(3,G,G,G);

C = G;
C(repmat(M,[1 1 3])) = I(repmat(M,[1 1 3]));

figure;
subplot(1,3,1), imshow(I), title('Original');
subplot(1,3,2), imshow(S), title('Color Segmentation (Red)');
subplot(1,3,3), imshow(C), title('Color Pop Effect (Red)');
