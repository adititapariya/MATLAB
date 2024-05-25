clc 
clear all

%given that f'(x,y)=2+root(xy),y(0)=1,find y(2)in step of 0.1.
f=@(x,y) 2+sqrt(x*y);
x0=0;
y0=1;
xC=2;
h=0.1;
x1=x0+h;
p=(xC-x0)/h;

%eulers_method
% for i=1:p
%     y1=y0+h*f(x0,y0);
%     x0=x0+h;
%     y0=y1;
%     fprintf('The value of %0.4f is %0.4f\n',x0,y0);
% end

%modified_eulers
% for i=1:p
%    y1=y0+h*f(x0,y0);
%    y2=y0+(h*(f(x0,y0)+f(x1,y1))/2);
%    x0=x0+h;
%    x1=x1+h;
%    y0=y2;
%    fprintf('The value of %0.4f is %0.4f\n',x0,y2);
% end

%rk 2 method:
% for i=1:p
%    k1=f(x0,y0);
%    k2=f(x0+h,y0+(k1*h));
%    y1=y0+(h*(k1+k2)/2);
%    x0=x0+h;
%    y0=y1;
%    fprintf('The value of %0.4f is %0.4f\n',x0,y1);
% end

%rk 2 modified method or RK 4 Method:
for i=1:p
    k1=f(x0,y0);
    k2=f(x0+(h/2),y0+(k1*h/2));
    k3=f(x0+(h/2),y0+(k2*h/2));
    k4=f(x0+h,y0+k3*h);
    y1=y0+(h*(k1+2*(k2+k3)+k4)/6);
    x0=x0+h;
    y0=y1;
    fprintf('The value of %0.4f is %0.4f\n',x0,y1);
end






