clear all
close all
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1.
[A mapA] = imread('windmill.bmp');

for i=1:256
    for j=1:256  
        Anew(i,j)=i;
    end
end

imwrite(Anew, mapA, 'windmillpalette.bmp')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2.
mapnew=zeros(256,3);

for i=1:256
    for j=1:3
       mapAnew(i,j)=(222*mapA(i,1)+707*mapA(i,2)+71*mapA(i,3))/1000;
    end
end

imwrite(A, mapAnew, 'windmillgreyscale.bmp')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3.
k=1;
I=0.5;
H=0:360/256:(360-360/256);
S=(1-k/10);    
M=I*(1+S);
m=2*I-M;

for i=1:256
    if H(i)<60
        mapB(i,1)=m+(M-m)*H(i)/60;
    elseif H(i)<180
        mapB(i,1)=M;
    elseif H(i)<240
        mapB(i,1)=m+(M-m)*(240-H(i))/60;
    else
        mapB(i,1)=m;
    end
    
    if H(i)<120
        mapB(i,2)=m;
    elseif H(i)<180
        mapB(i,2)=m+(M-m)*(H(i)-120)/60;
    elseif H(i)<300
        mapB(i,2)=M;
    else
        mapB(i,2)=m+(M-m)*(360-H(i))/60;
    end
    
    if H(i)<60
        mapB(i,3)=M;
    elseif H(i)<120
        mapB(i,3)=m+(M-m)*(120-H(i))/60;
    elseif H(i)<240
        mapB(i,3)=m;
    elseif H(i)<300
        mapB(i,3)=m+(M-m)*(H(i)-240)/60;
    else
        mapB(i,3)=M;
    end    
end

imwrite(Anew, mapB, 'Q3.bmp');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 4.
k=1;
I=0.5;
H=0:360/256:(360-360/256);  
S=(0.1+k/10);    
M=I*(1+S);
m=2*I-M;

for i=1:256
    if H(i)<60
        mapC(i,1)=m+(M-m)*H(i)/60;
    elseif H(i)<180
        mapC(i,1)=M;
    elseif H(i)<240
        mapC(i,1)=m+(M-m)*(240-H(i))/60;
    else
        mapC(i,1)=m;
    end
    
    if H(i)<120
        mapC(i,2)=m;
    elseif H(i)<180
        mapC(i,2)=m+(M-m)*(H(i)-120)/60;
    elseif H(i)<300
        mapC(i,2)=M;
    else
        mapC(i,2)=m+(M-m)*(360-H(i))/60;
    end
    
    if H(i)<60
        mapC(i,3)=M;
    elseif H(i)<120
        mapC(i,3)=m+(M-m)*(120-H(i))/60;
    elseif H(i)<240
        mapC(i,3)=m;
    elseif H(i)<300
        mapC(i,3)=m+(M-m)*(H(i)-240)/60;
    else
        mapC(i,3)=M;
    end    
end

imwrite(Anew, mapC, 'Q4.bmp');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 5.
H=60+10*k;
I=0.5;
S=0:1/256:(1-1/256);
M=I*(1+S);
m=2*I-M;

for i=1:256
    if H<60
        mapD(i,1)=m(i)+(M(i)-m(i))*H/60;
    elseif H<180
        mapD(i,1)=M(i);
    elseif H<240
        mapD(i,1)=m(i)+(M(i)-m(i))*(240-H)/60;
    else
        mapD(i,1)=m(i);
    end
    
    if H<120
        mapD(i,2)=m(i);
    elseif H<180
        mapD(i,2)=m(i)+(M(i)-m(i))*(H-120)/60;
    elseif H<300
        mapC(i,2)=M(i);
    else
        mapD(i,2)=m(i)+(M(i)-m(i))*(360-H)/60;
    end
    
    if H<60
        mapD(i,3)=M(i);
    elseif H<120
        mapD(i,3)=m(i)+(M(i)-m(i))*(120-H)/60;
    elseif H<240
        mapD(i,3)=m(i);
    elseif H<300
        mapC(i,3)=m(i)+(M(i)-m(i))*(H-240)/60;
    else
        mapD(i,3)=M(i);
    end    
end
imwrite(Anew, mapD, 'Q5.bmp');
