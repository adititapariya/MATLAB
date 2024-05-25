clc
clear all

x=[1101 911.3 636 451.1];
y=[25.113 30.131 40.120 50.128];
xg=input('enter the value of xg: ');
for i=1:length(x)
    xc=x;     %xc copy of x
    xc(i)=[]; %removing ith node point from x 
    p(i)= prod(xg-xc)/prod(x(i)-xc);
end
y1=sum(p.*y);
fprintf('value of y at xg=%f is %f\n',xg,y1);

