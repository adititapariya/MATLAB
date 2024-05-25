clc
clear all

r1=input("enter initial value 1: ");   %0
r2=input("enter initial value 2: ");   %1
f=@(x) (2^x-5*x+2);
t=1;
a=f(r1);
b=f(r2);
rnet=r2-r1;
fnet=b-a;
while t>10^-10
    if rnet==0
        disp('FAILED!') 
    else
        r3=r2-((rnet)*b)/fnet;
        R=double(r3)
        t=abs((r3-r2)/r3);
        r1=r2;
        r2=r3;
        a=f(r1);
        b=f(r2);
        rnet=r2-r1;
        fnet=b-a;
    end
end
r3


