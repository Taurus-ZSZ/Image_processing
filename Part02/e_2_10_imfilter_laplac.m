clc 
clear
close all;
path = '../Data/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Ed_CH02_Images/';
name = 'Fig0217(a).tif';
file_name = [path name];
f = imread(file_name);
disp(class(f));
figure(1)
subplot(2,2,1)
imshow(f);


w = fspecial('laplacian',0)
disp(class(w));
%w1 = im2int(w);

g1 = imfilter(f,w,'replicate');
subplot(2,2,2);
imshow(g1,[ ]);

f2 = tofloat(f);
g2 = imfilter(f2,w,'replicate');
subplot(2,2,3);
imshow(g2,[ ]);

g = f2 -g2;
subplot(2,2,4);
imshow(g);
