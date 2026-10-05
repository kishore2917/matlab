[f,p] = uigetfile({'*.jpg;*.png;*.bmp'},'Select an image');
I = imread(fullfile(p,f));
G = rgb2gray(I);

S = edge(G,'sobel');
P = edge(G,'prewitt');
R = edge(G,'roberts');

subplot(2,2,1), imshow(G), title('Original Grayscale');
subplot(2,2,2), imshow(S), title('Sobel Edges');
subplot(2,2,3), imshow(P), title('Prewitt Edges');
subplot(2,2,4), imshow(R), title('Roberts Edges');
