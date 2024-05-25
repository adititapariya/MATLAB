clc 
clear all

f=@(x,y) -2.2067*10^-12*(y^4-81*10^8);
x0=0;
y0=1200;
xC=480;
h=120;   %interval taken
p=(xC-x0)/h;
x1=x0+h;

%modified euler's formula
for i=1:p
    y1=y0+h*f(x0,y0);
    y2=y0+(h*(f(x0,y0)+f(x1,y1))/2);
    x0=x0+h;
    x1=x1+h;
    y0=y2;
    fprintf('The value of %0.4f is %0.4f\n',x0,y2);
end








