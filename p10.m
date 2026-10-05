[f,p]=uigetfile({'*.jpg;*.png;*.bmp'},'Select an Image');
I=imread(fullfile(p,f));

X=double(reshape(I,[],3));
K=3;
[idx,C]=kmeans(X,K,'Replicates',3);

S=reshape(uint8(C(idx,:)),size(I));

subplot(1,2,1),imshow(I),title('Original Image');
subplot(1,2,2),imshow(S),title(['Segmented Image with ',num2str(K),' Regions']);
