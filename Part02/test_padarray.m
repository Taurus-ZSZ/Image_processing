clc
clear all;
close all;

f = [1 2; 3 4];
fp = padarray(f,[3 2], 'replicate', 'post')

fp1 = padarray(f,[3 2], 'replicate', 'pre')
fp2 = padarray(f,[3 2], 'replicate', 'both')

fp3 = padarray(f,[4 2], 'symmetric', 'post')
fp4 = padarray(f,[4 2], 'circular', 'post')

w = fspecial('laplacian',0.5)
w1 = fspecial('prewitt')'
w1 = fspecial('sobel')