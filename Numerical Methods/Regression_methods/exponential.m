clc
clear all

%y=a*e^(b*x)
%logy = loga + b*x
n=input('enter the number of data values: ');
x=input('enter data for x: ');
y=input('enter data for y: ');
for i=1:n
    Y(i)= log(y(i));
end
a=0;b=0;c=0;d=0;
for i=1:n
    a=a+x(i);
    b=b+Y(i);
    c=c+x(i)*Y(i);
    d=d+x(i)*x(i);
end

A=[n,a;a,d]
C=[b;c]
B=inv(A)*C

slope=B(2,1)
B(1,1)
a1=exp(B(1,1));
intercept=a1
y = intercept * exp(slope*x);
plot(y,x)
