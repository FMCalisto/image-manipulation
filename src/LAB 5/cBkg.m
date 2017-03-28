vid = VideoReader('Movie_0002.avi');

nFrames = 40 * 25;
step = 20;

vid4D = zeros([vid.Height vid.Width 3 nFrames/step]);
figure,
k = 1;

for i = 1 : step : nFrames
    i
    img = read(vid, i);
    vid4D(:,:,:,k) = img;
    imshow(img); drawnow
    k = k + 1;
    %pause
end

bkg = median(vid4D, 4);
figure,
imshow(uint8(bkg));


vid = VideoReader('Movie_0002.avi');
nFrames = 40 * 25;
step = 20;

img=read(vid,1);
Bkg=zeros (size(img));

figure; hold on
alpha=0.05; %Exprimentar varios valores para ALPHA

for i = 1 : step : nFrames
    i
    img = read(vid, i);
    vid4D(:,:,:,k) = img;
    imshow(img); drawnow
    k = k + 1;
    %pause
end

bkg = median(vid4D, 4);
figure,
imshow(uint8(bkg));


