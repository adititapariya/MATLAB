clc
clear all 
syms x1 x2 x3
f1(x1,x2,x3)= 3*x1-cos(x2*x3)-(1/2);
f2(x1,x2,x3)=x1^2-81*(x2+0.1)^2+sin(x3)+1.06;
f3(x1,x2,x3)=exp(-x1*x2)+20*x3+((10*pi-3)/3);
x=[0.1;0.1;-0.1];
e=10^(-10);
n=10;

f1x1(x1,x2,x3)= diff(f1, x1);
f1x2(x1,x2,x3)= diff(f1, x2);
f1x3(x1,x2,x3)= diff(f1, x3);

f2x1(x1,x2,x3)= diff(f2, x1);
f2x2(x1,x2,x3)= diff(f2, x2);
f2x3(x1,x2,x3)= diff(f2, x3);

f3x1(x1,x2,x3)= diff(f3, x1);
f3x2(x1,x2,x3)= diff(f3, x2);
f3x3(x1,x2,x3)= diff(f3, x3);

f11=matlabFunction(f1);
f22=matlabFunction(f2);
f33=matlabFunction(f3);

f1x11=matlabFunction(f1x1);
f1x22=matlabFunction(f1x2);
f1x33=matlabFunction(f1x3);

f2x11=matlabFunction(f2x1);
f2x22=matlabFunction(f2x2);
f2x33=matlabFunction(f2x3);

f3x11=matlabFunction(f3x1);
f3x22=matlabFunction(f3x2);
f3x33=matlabFunction(f3x3);

for i=1:n
    F=[f11(x(1),x(2),x(3));f22(x(1),x(2),x(3));f33(x(1),x(2),x(3))];
    J=[f1x11(x(1),x(2),x(3)),f1x22(x(1),x(2),x(3)),f1x33(x(1),x(2),x(3));...
      f2x11(x(1),x(2),x(3)),f2x22(x(1),x(2),x(3)),f2x33(x(1),x(2),x(3));...
      f3x11(x(1),x(2),x(3)),f3x22(x(1),x(2),x(3)),f3x33(x(1),x(2),x(3))];
  y=-J\F; %-inv(J)*F
%   if norm(y)<e
%       fprintf('solution found within %d iterations\n',i)
%       break
%   end
  format long
  x=x+y
end
