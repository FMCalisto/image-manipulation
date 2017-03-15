clear all

imgg = imread('database/veiculoGray.jpg');

imshow(imgg);
hold on;
N = 0;
but = 1;

while (but == 1 | but == 32)
    [ci, li, but] = ginput(1);
    but
    if but == 1 %add point
        N = N + 1;
        cp(N) = ci;
        lp(N) = li;
        plot(ci, li, 'r.', 'MarkerSize', 10);
        drawnow;
        if N > 1
            plot(cp(:), lp(:), 'r.-', 'MarkerSize', 10);
            drawnow;
        end
    end
end

cp = cp';
lp = lp';

BW=roipoly(imgg,cp,lp);
Imcrp=imgg.*uint8(BW);
imagesc(Imcrp); colormap gray

%----------Outro Exemplo-----------%

I = imread('eight.tif');
figure, imshow(I); hold on,
c = [222 272 300 270 221 194];
r = [21 21 75 121 121 75];
c=[ c c(1)];
r=[ r r(1)];

plot(c,r,'*b-');

BW=roipoly(I,c,r);
figure;imshow(BW);

Imcrp= I.*uint8(BW);
figure;imshow(Imcrp);
