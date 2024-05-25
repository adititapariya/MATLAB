clc
clear all

a=input("enter the first matrix: ");
b=input("enter the second matrix: ");

c=[a b]
[m ,n]=size(c)
l=a

for i=m-1:-1:1
    for j=1:1:i
        l(j,:)=l(j,:)-l(i+1,:)*(l(j,i+1)/l(i+1,i+1));
    end
end
l
for i=1:m
    l(i,:)=l(i,:)/l(i,i);
end
l

o=l(2,1);
l(2,1)=l(3,2);
l(3,2)=o;
l
u=a

for i=2:1:m
    for j=m:-1:i
        u(j,:)=u(j,:)-u(i-1,:)*(u(j,i-1)/u(i-1,i-1));
    end
end
u

y(1)=c(1,n);
for i=2:m
    s=0;
    for j=1:i-1
        s=s+l(i,j)*y(j);
    end
    y(i)=(c(i,n)-s)/l(i,i);
end
y

x(m)=y(m)/u(m,m);
for i=m-1:-1:1
    s=0;
    for j=i+1:1:m
        s=s+u(i,j)*x(j);
    end
    x(i)=(y(i)-s)/u(i,i);
end

for i=1:m
    fprintf('x(%d)=%f\n',i,x(i));
end