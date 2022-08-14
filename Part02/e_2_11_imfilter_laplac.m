clc 
clear
close all;
path = '../Data/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Ed_CH02_Images/';
name = 'Fig0217(a).tif';
file_name = [path name];
f = imread(file_name);
disp(class(f));
figure(1)
subplot(1,3,1)
imshow(f);


w4 = fspecial('laplacian',0)
disp(class(w4));
%w1 = im2int(w);
w8 = [1 1 1; 1 -8 1; 1 1 1];

f = tofloat(f);
g4 = f - imfilter(f,w4,'replicate');
g8 = f - imfilter(f,w8,'replicate');
subplot(1,3,2);
imshow(g4,[ ]);

subplot(1,3,3);
imshow(g8,[ ]);
