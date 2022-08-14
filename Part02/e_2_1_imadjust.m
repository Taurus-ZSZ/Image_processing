clc 
clear
close all;
path = '../Data/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Ed_CH02_Images/';
name = 'Fig0203(a).tif';
file_name = [path name];
f = imread(file_name);
figure(1)
subplot(2,3,1);
imshow(f);
subplot(2,3,2);
g = imcomplement(f); %same
g1 = imadjust(f,[0,1],[1,0]);
imshow(g1);
subplot(2,3,3);
g2 = imadjust(f,[0.5 0.75],[0 1]);
imshow(g2)

subplot(2,3,4);
g3 = imadjust(f,[ ],[ ],2);
imshow(g3)
subplot(2,3,5);
Low_High = stretchlim(f);
g4 = imadjust(f, Low_High,[ ]);
imshow(g4)
subplot(2,3,6);
g5 = imadjust(f, Low_High,[1 0]);
imshow(g5)
