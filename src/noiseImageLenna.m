clear all

imgg = imread('lena512.bmp');

figure, imshow(imgg)
image = imnoise(imgg, 'salt & pepper',0.05);
figure, imshow(image);

%Metodo 1
%K = imfilter(image,fspecial('gaussian',11,1));
%K = imfilter(image,fspecial('average',3));

%Metodo 2
K=medfilt2(image,[3,3]);
figure, imshow(K);

% NOTA: fazer mesh de f= fspecial('gaussian',11,1)
% para vários valores de sigma!!