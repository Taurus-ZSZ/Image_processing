clc 
clear
close all;
path = '../Data/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Ed_CH02_Images/';
name = 'Fig0203(a).tif';
file_name = [path name];
f = imread(file_name);
figure(1);
subplot(1,2,1);
imshow(f);
g = im2uint8(mat2gray(log(1+double(f))));
subplot(1,2,2)
imshow(g);


figure
subplot(2,2,1)
imhist(f);
subplot(2,2,2)
h = imhist(f,25);
horz = linspace(0,255,25);
bar(horz, h)
axis([0 255 0 300000])
set(gca, 'xtick', 0:50:255)
set(gca, 'ytick', 0:100000:300000)
subplot(2,2,3)
h = imhist(f,25);
horz = linspace(0,255,25);
stem(horz,h,'fill');
axis([0 255 0 300000])
set(gca, 'xtick', 0:50:255)
set(gca, 'ytick', 0:100000:300000)

subplot(2,2,4)
hc = imhist(f);
plot(hc);
axis([0 255 0 30000])
set(gca, 'xtick', 0:50:255)
set(gca, 'ytick', 0:10000:30000)

