clc
clear all

%y=a*(x^b)
%logy = loga + x*logb
n=input('enter the number of data values: ');
x=input('enter data for x: ');
y=input('enter data for y: ');
for i=1:n
    Y(i)= log(y(i));
end
a=0;b=0;c=0;d=0;
for i=1:n
    a=a+x(i)
    b=b+Y(i);
    c=c+x(i)*Y(i);
    d=d+x(i)*x(i);
end

A=[n,a;a,d]
C=[b;c]
B=inv(A)*C

slope=exp(B(2,1))
intercept=exp(B(1,1))

y = intercept *((slope).^x);
plot(y,x)