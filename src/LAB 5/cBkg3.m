path='Ist'; frameIdComp=4;
str=['%s%.' num2str(frameIdComp) 'd.%s'];

nFrame=548;
step=4;

vid4D= zeros([288 360 3 nFrame/step]);
figure;
for k=1 : 1 : nFrame/step
    k
    str1=sprintf(str,path,k,'jpg');
    img=imread(str1);
    vid4D(:,:,:,k)=img;
    imshow(img); drawnow
    hold off
    %pause(0.2)
end

bkg= median(vid4D,4);
figure; imagesc(uint8(bkg));
