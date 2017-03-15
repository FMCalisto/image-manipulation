clear all

imgg = imread('veiculoGray.jpg');

figure;
imagesc(imgg); colormap gray

%noise = round(randn(size(imgg))*50);
%imageN = max(min(imgg+uint8(noise),255),0);
imageN = imnoise(imgg,'gaussian',0,0.12);


% Mask 
figure;
imshow(imageN);
h=fspecial('average');
imageF=imfilter(imageN,h);
figure;
imshow(imageF);