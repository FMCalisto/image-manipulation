clear all, close all

%--------------- Primeiro Exemplo, Deteccao da Encephalic Mass----------%

img=imread('BrainMRI_Axial.jpg');
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
subplot(2,3,2); imshow(BW1); title('Erosão');

BW2=imdilate(BW,se);
subplot(2,3,3); imshow(BW2); title('Dilatação');

BW3=imopen(BW,se);
subplot(2,3,4); imshow(BW3); title('Abertura');

% Não sei se valerá a pena
% BW4 = imclose(BW, se);
% figure, imshow(BW4), title('Fecho');

[lb num]=bwlabel(BW3); % Estava BW3
figure,
subplot(1,3,1); imshow(mat2gray(lb)); title('Etiquetas');
stats= regionprops(lb);
areas = [stats.Area];
[dummy indM] = max(areas);
imgBr = (lb == indM);   % imgBr -> numero de objectos com 12 pixels
subplot(1,3,2); imshow(imgBr); title('Maior Área');
subplot(1,3,3); imshow(imgg.*uint8(imgBr)); title('Cérebro');


% indM -> Position in arryz with maximum available
% dummy 
% [ind val] = max([1 2 4 3 6 2]);
%   5   6

areas =[];
for k=1 : num
    areas = [areas length(find(lb==k))]    
end

[val ind] = max(areas);

%--------------------------Segundo Exemplo---------------%

% img=imread('rabbitBW.jpg');
% imshow(img); title('Original');
% pause
% figure, hold on,
% imshow(img);
% se = strel('disk',3);
% for k=1 : 30
%     k
%     img = imerode(img, se);
%     imshow(img); drawnow
%     pause(.2)    
% end


%--------------------------Terceiro Exemplo---------------%

img = imread('rabbitBW.jpg');
imshow(img); title('Original');
pause
figure, hold on,
imshow(img);
se = strel('disk',3);
for k=1 : 50
    img = imdilate(img, se);
    imshow(img); drawnow
    pause(.5)
end

% NOTA:  Usar um exemplo de cada vez.    