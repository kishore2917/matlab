i = imresize(im2gray(imread('img2.jpg')),[20 20]);
disp('pixel matrix');
disp(i)
disp('pixel');
disp(i(x,y));
disp('4 nieghborhood');
disp([i(x-1,y), i(x+1,y), i(x,y-1), i(x,y+1)]);
disp('8 nieghborhood');
disp(i(x-1:x+1,y-1:y+1));
