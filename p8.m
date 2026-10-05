[f,p]=uigetfile({'*.jpg;*.png;*.bmp'},'Select an Image');
I=imread(fullfile(p,f));

G=.2989*double(I(:,:,1))+.587*double(I(:,:,2))+.114*double(I(:,:,3));
figure,imshow(uint8(G)),title('Original Grayscale Image');

D=dct2(G); D(abs(D)<50)=0;
figure,imshow(uint8(idct2(D))),title('Compressed Image (after DCT)');

OK=numel(G)*8/1024;
CK=nnz(D)*8/1024;

fprintf('Original Size: %.2f KB (%.4f MB)\n',OK,OK/1024);
fprintf('Compressed Size: %.2f KB (%.4f MB)\n',CK,CK/1024);
fprintf('Compression Ratio = %.2f\n',OK/CK);
