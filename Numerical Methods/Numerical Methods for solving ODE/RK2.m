clc 
clear all

f=@(x,y) -2.2067*10^-12*(y^4-81*10^8);
x0=0;
y0=1200;
xC=480;
h=120;   %interval taken
x1=x0+h;
p=(xC-x0)/h;

%rk 2 method:
for i=1:p
    k1=f(x0,y0);
    k2=f(x0+h,y0+(k1*h));
    y1=y0+(h*(k1+k2)/2);
    x0=x0+h;
    y0=y1;
    fprintf('The value of %0.4f is %0.4f\n',x0,y1);
end



