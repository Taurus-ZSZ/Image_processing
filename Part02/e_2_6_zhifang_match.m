clc 
clear
close all;
path = '../Data/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Ed_CH02_Images/';
name = 'Fig0210(a).tif';
file_name = [path name];
f = imread(file_name);
figure(1);
subplot(2,2,1)
imshow(f)

subplot(2,2,2)
imhist(f);

subplot(2,2,3)
g1 = histeq(f,256);
imshow(g1)

subplot(2,2,4)
imhist(g1);


figure(2)
p = manualhist;
%p = twomodegauss

g2 = histeq(f,p);
subplot(2,2,1)
plot(p);
subplot(2,2,2)
imshow(g2);
subplot(2,2,3)
imhist(g2)

%% adapthistep

g3 = adapthisteq(f);
g4 = adapthisteq(f,'NumTiles',[25 25]);
g5 = adapthisteq(f, 'NumTiles', [25 25], 'ClipLimit',0.05);

figure(3)
subplot(2,4,1)
imshow(f);

subplot(2,4,2)
imshow(g3);

subplot(2,4,3)
imshow(g4);

subplot(2,4,4)
imshow(g5);

g6 = adapthisteq(f);
g7 = adapthisteq(f,'NumTiles',[50 50]);
g8 = adapthisteq(f, 'NumTiles', [50 50], 'ClipLimit',0.05);

subplot(2,4,5)
imshow(f);

subplot(2,4,6)
imshow(g6);

subplot(2,4,7)
imshow(g7);

subplot(2,4,8)
imshow(g8);

