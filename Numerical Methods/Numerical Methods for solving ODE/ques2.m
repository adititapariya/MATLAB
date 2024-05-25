clc 
clear all

%given that f'(x,y)=2+root(xy),y(0)=1,find y(1)in step of 0.1.
f=@(x,y) (3-(y/x));
x0=1;
y0=2;
xC=1;
h=0.1;
x1=x0+h;
p=(xC-x0)/h;

%eulers_method
for i=1:p
    y1=y0+h*f(x0,y0)
    x0=x0+h;
    y0=y1;
    fprintf('The value of %0.4f is %0.4f\n',x0,y0);
end





