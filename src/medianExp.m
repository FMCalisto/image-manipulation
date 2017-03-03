clear all

% imgg = imread('veiculoGray.jpg');
%
% imageN = imnoise(imgg, 'slat & pepper',0.42);
% figure;imshow(imageN);
% imageF2 = filter2(imageN);
% figure, imshow(imageF2);
% imageF2 = filter2(imageF2);
% figure, imshow(imageF2);

% --------exemplo mais requintado (está em Cap5) ----------%

% imgg = imread('veiculoGray.jpg');
% second part
imgg = imread('eight.tif');
figure,imshow(imgg);
% imageN = imnoise(imgg,'gaussian',0,0.01);
imageN = imnoise(imgg,'salt & pepper',0.09);
figure,imshow(imageN);
K = filter2(fspecial('Average',4),imageN)/255;
figure,imshow(K)
imageF2 = medfilt2(imageN);
figure, imshow(imageF2);
