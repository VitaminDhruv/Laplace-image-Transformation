function Laplace(n)
f=im2double(imread('sample.png'));
if n==1 
w=[0 1 0; 1 -4 1 ; 0 1 0];
    c=-1;
elseif n==2
    w=[1 1 1; 1 -8 1; 1 1 1];
    c=-1;    
elseif n==3
    w=[0 1 0; 1 -4 1 ; 0 1 0];
c=1;

else 
    w=[-1 -1 -1; -1 8 -1; -1 -1 -1];
    c=1;

end 
deltaF = imfilter(f,w);
g= f + (c*deltaF);

figure;
subplot(2,2,1)
imshow(f);
title('Original image');

subplot(2,2,2)
imshow(deltaF);
title('laplace Transform image');


subplot(2,2,3)
imshow(g);
title('Transform Image ');
end

