clc 
clear
close all;
path = '../Data/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Ed_CH02_Images/';
name = 'Fig0219(a).tif';
file_name = [path name];
f = imread(file_name);
disp(class(f));
fn = imnoise(f, 'salt & pepper', 0.2);
disp(class(fn));
gm = medfilt2(fn);
disp(class(gm));
gms = medfilt2(fn,'symmetric');
disp(class(gms));

figure(1);
subplot(1,4,1);
imshow(f);
subplot(1,4,2);
imshow(fn, [ ]);

subplot(1,4,3);
imshow(gm, [ ]);

subplot(1,4,4);
imshow(gms,[ ]);
