clc
clear all

%y=a+b*x
n=input('enter the number of data values: ');
x=input('enter data for x: ');
y=input('enter data for y: ');

a=0;b=0;c=0;d=0;
for i=1:n
    a=a+x(i);
    b=b+y(i);
    c=c+x(i)*y(i);
    d=d+x(i)*x(i);
end

A=[n,a;a,d]
C=[b;c]
B=inv(A)*C

slope=B(2,1)
intercept=B(1,1)

plot(x,y)