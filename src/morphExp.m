clear all, close all

%--------------- Primeiro Exemplo, Deteccao da Encephalic Mass----------%

img=imread('database/BrainMRI_Axial.jpg');
imshow(img); title('Original');
imgg=rgb2gray(img);
%figure, imhist(imgg);

BW= imgg>60;
figure,
subplot(2,3,1);
imshow(BW); title('Original BW');
se=strel('disk',3); %Variar esta contante
% se=strel('line',3,45); %Variar esta contante
% se=strel('square',3); %Variar esta contante
% se=strel('ball',3); %Variar esta contante

BW1=imerode(BW,se);
subplot(2,3,2); imshow(BW1); title('Erosao');

BW2=imerode(BW,se);
subplot(2,3,3); imshow(BW2); title('Dilatacao');

BW3=imerode(BW,se);
subplot(2,3,4); imshow(BW3); title('Abertura');

% Nao sei se valero a pena
% BW4 = imclose(BW, se);
% figure, imshow(BW4), title('Fecho');