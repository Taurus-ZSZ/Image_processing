clc 
clear
close all;
path = '../Data/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Ed_CH02_Images/';
name = 'Fig0208(a).tif';
file_name = [path name];
f = imread(file_name);
figure(1);
subplot(2,2,1)
imshow(f)

subplot(2,2,2)
imhist(f);
ylim('auto');

subplot(2,2,3)
g = histeq(f,256);
imshow(g);

subplot(2,2,4)
imhist(g);
ylim('auto');

figure(2)
subplot(1,2,1)
g2 = histeq(f,2);
imshow(g2);

subplot(1,2,2)
imhist(g2);
ylim('auto');


%% cdf 
% question1: other step cdf ??? if histeq(f,128) ??? how do you do? 
hnorm = imhist(f)./numel(f);
cdf = cumsum(hnorm);
figure(3)
x = linspace(0,1, 256);
plot(x, cdf);

axis([0 1 0 1]);
set(gca, 'xtick', 0:0.2:1);
set(gca, 'ytick', 0:0.2:1);
xlabel('Input intensity values', 'fontsize', 9);
xlabel('Output intensity values', 'fontsize', 9);
