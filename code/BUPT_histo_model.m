function [ OUT1, OUT2 ] = BUPT_histo_model( IN1, IN2 )
%2d Maps the input grey level image into an output image which has a predefined frequency distribution
%   Input:
%       IN1: input greyscale matrix of the first image
%       IN2: input greyscale matrix of the second image
%       l:  colour level of the image
%   Output:
%       OUT: output greyscale matrix


IN1 = uint8(IN1);
IN2 = uint8(IN2);

histi=imhist(IN1);
[h1, w1]=size(IN1);
pi=histi/(h1*w1);

G=[];
for i=1:256
    G=[G sum(pi(1:i))];
end

[h2, w2]=size(IN2);
histt=imhist(IN2);
pt=histt/(h2*w2);

s=[];
for i=1:256
    s=[s, sum(pt(1:i))];
end

index=[];
for i=1:256
    tmp{i}=G-s(i);
    tmp{i}=abs(tmp{i});
    [a, index(i)]=min(tmp{i});
end

imgn=zeros(h2,w2);
for i=1:h2
    for j=1:w2
        imgn(i,j)=index(IN2(i,j)+1)-1;
    end
end


OUT1 = imgn;

figure,
subplot(2,3,1), imshow(uint8(IN1)); title('A');
subplot(2,3,2), imshow(uint8(IN2)); title('B');
subplot(2,3,3), imshow(uint8(OUT1)); title('Modelled B');
subplot(2,3,4), imhist(uint8(IN1)); title('Histogram of A');
subplot(2,3,5), imhist(uint8(IN2)); title('Histogram of B');
subplot(2,3,6), imhist(uint8(OUT1)); title('Histogram of modelled B');

for i=-255:0
    e(i+256)=1.6^(i/16);
end;

G=[];
for i=1:256
    G = [G, e(i)];
end


[h2, w2]=size(IN2);
histt=imhist(IN2);
pt=histt/(h2*w2);

s=[];
for i=1:256
    s=[s, sum(pt(1:i))];
end

for i=1:256
    tmp{i}=G-s(i);
    tmp{i}=abs(tmp{i});
    [a, index(i)]=min(tmp{i});
end

imgn=zeros(h2,w2);
for i=1:h2
    for j=1:w2
        imgn(i,j)=index(IN2(i,j)+1)-1;
    end
end

OUT2 = imgn;

figure, 
subplot(2,2,1), imshow(uint8(IN2)); title('B');
subplot(2,2,2), imhist(uint8(IN2)); title('Histogram of B');
subplot(2,2,3), imshow(uint8(OUT2)); title('Modelled B');
subplot(2,2,4), imhist(uint8(OUT2)); title('Histogram of modelled B');

end

