clc
clear all

%y=a+b*x+c*x^2;
n=input('enter the number of data values: ');
x=input('enter data for x: ');
y=input('enter data for y: ');

a=0;b=0;c=0;d=0;e=0;f=0;g=0;
for i=1:n
    a=a+x(i);
    b=b+x(i)^2;
    c=c+x(i)^3;
    d=d+x(i)^4;
    e=e+y(i);
    f=f+x(i)*y(i);
    g=g+(x(i)^2)*y(i);
end
a
b
c
d
e
f
g

A=[n,a,b;a,b,c;b,c,d]
C=[e;f;g]
B=inv(A)*C

slope_double=B(3,1)
slope_single=B(2,1)
intercept=B(1,1)