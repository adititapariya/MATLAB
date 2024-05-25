clc
clear all

n = input("enter value: ");

for a=1:n
    X(a)=input("enter the value of array x");
end

for b=1:n
    Y(b)=input("enter the value of array y");
end

x= input("enter the value of t:");
h = X(2)-X(1);

for i= 1:n-1
    d(i,1)=Y(i+1)-Y(i);
end

d;

for j=2:n-1
    for i=1:n-j
        d(i,j)=d(i+1,j-1)-d(i,j-1);
    end
    d;
end

d

p=(x-X(1))/h;
prod=1;
y=Y(1);
for t=1:n-1
    prod=prod*(p-t+1)/t;
    y=y+prod*d(1,t);
end
d;
y
    
