% Noise
% N = 15;
% for i=1:N
%    Imnoise=noise(imgg);
%    image(:,:,i)=ImNoise;
    

%end

% [LC]=size(imgg);
% L -> 512
% C -> 512

% i=15

clear all

imgg = imread('database/lena512.bmp');

div = 10;
N = 15;

[L, C] = size(imgg);

for i = 1 : N
    image(1:L,1:C,i) = imnoise(imgg, 'salt & pepper', 0.22);
    figure(1);
    imshow(image(1:L,1:C,i));
    pause    
end

figure, imshow(image);