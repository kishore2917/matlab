[f,p]=uigetfile({'*.jpg;*.png;*.bmp'},'Select an Image');
I=imread(fullfile(p,f));

G=.2989*double(I(:,:,1))+.587*double(I(:,:,2))+.114*double(I(:,:,3));
B=imbinarize(uint8(G));

E=imerode(B,strel('square',3));
D=B-E;

subplot(1,3,1),imshow(B),title('Binary Image');
subplot(1,3,2),imshow(E),title('Eroded Image');
subplot(1,3,3),imshow(D),title('Boundary Extracted');
