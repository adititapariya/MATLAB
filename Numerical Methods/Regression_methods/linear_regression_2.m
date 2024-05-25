clc
clear all

%y=C+B*x
n=input('enter the number of data values: ');
x=input('enter data for x: ');
y=input('enter data for y: ');

a=0;b=0;c=0;B_num=0;B_den=0;
for i=1:n
    a=a+x(i);
    b=b+y(i);
end
x_bar=a/n;
y_bar=b/n;

for j=1:n
    B_num=B_num+(x(j)-x_bar)*(y(j)-y_bar);
    B_den=B_den+((x(j)-x_bar))^2;
end
B=B_num/B_den;

for k=1:n
    A(k)=(y(k)-B*x(k));
end

for l=1:n
    c=A(l)+c;
end

c_net=c/n;

slope=B
intercept=c_net