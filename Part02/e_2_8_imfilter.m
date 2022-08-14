clc 
clear
close all;
path = '../Data/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Ed_CH02_Images/';
name = 'Fig0216(a).tif';
file_name = [path name];
f = imread(file_name);
%disp(class(f));
f = im2double(f);
figure(1);
subplot(2,3,1);
imshow(f);

w = ones(31);

gd = imfilter(f, w);
subplot(2,3,2);
imshow(gd,[]);

gr = imfilter(f, w, 'replicate'); %add edge
subplot(2,3,3);
imshow(gr,[]);


gs = imfilter(f, w, 'symmetric'); 
subplot(2,3,4);
imshow(gs,[]);

gc = imfilter(f, w, 'circular'); 
subplot(2,3,5);
imshow(gc,[]);

f8 = im2uint8(f);
g8r = imfilter(f8,w, 'replicate');
subplot(2,3,6);
imshow(g8r,[]);



