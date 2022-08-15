clc 
clear
close all;
path = '../Data/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Original_Book_Images/DIPUM2E_International_Ed_CH03_Images/';
name = 'Fig0305(a).tif';
file_name = [path name];
f = imread(file_name);
figure(1);
subplot(1,4,1)
imshow(f)

[M,N] = size(f);
[f,revertclass] = tofloat(f);
F = fft2(f);
sig = 10;
H = lpfilter('gaussian',M,N,sig);
G = H.*F;
g = ifft2(G);
g = revertclass(g);
subplot(1,4,2)
imshow(g);

%% pad
PQ = paddedsize(size(f));
Fp = fft2(f,PQ(1), PQ(2));
Hp = lpfilter('gaussian',PQ(1),PQ(2),2*sig);
Gp = Hp.*Fp;
gp = ifft2(Gp);
gpc = gp(1:size(f,1),1:size(f,2));
gpc = revertclass(gpc);
subplot(1,4,3)
imshow(gpc);
subplot(1,4,4)
imshow(gp);

%% 

h = fspecial('gaussian',15,7);
gs = imfilter(f,h);
figure(2)
imshow(gs)