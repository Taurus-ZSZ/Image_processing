clc 
clear
close all;
path = '../Data/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Ed_CH02_Images/';
name = 'Fig0205(a).tif';
file_name = [path name];
f = imread(file_name);
figure(1);
subplot(1,2,1);
imshow(f);
g = im2uint8(mat2gray(log(1+double(f))));
subplot(1,2,2)
imshow(g);