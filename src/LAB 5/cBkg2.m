% --------- Buscado ao PC do Prof-----------%

% vid  = mmreader('Movie_0002.wmv'); % Matlab 2009
vid= VideoReader('Movie_0002.avi'); % Matlab 2013

nFrame= 40*25;
step=20;

img=read(vid, 1);
Bkg=zeros(size(img));
alfa=0.05;
figure; hold on

%Exprimentar varios valores para ALPHA

for i = 1 : step : nFrame
    i
    img = read(vid, i);
    Y = img;
    Bkg = alpha * double(Y) + (1-alpha) * double(Bkg);
    imshow(uint8(Bkg)); drawnow
end

% ------------ Fim ------------------- %