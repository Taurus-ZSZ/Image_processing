clc 
clear
close all;
path = '../Data/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Ed_CH03_Images/';
name = 'Fig0303(a).tif';
file_name = [path name];
f = imread(file_name);
disp(class(f));

figure(1);
subplot(2,3,1);
imshow(f);

subplot(2,3,2);
F = fft2(f);
S = abs(F);
imshow(S,[]);

subplot(2,3,4);
Fc = fftshift(F);
imshow(abs(Fc),[ ]);


subplot(2,3,5);
S2 = log(1 + abs(Fc));
imshow(S2,[ ]);

subplot(2,3,6);
F = ifftshift(Fc);
%phi = atan2(imag(F),real(F));
phi = angle(F);
imshow(phi);
%F = S.*exp(i*phi);
%imshow(F, [ ]);

