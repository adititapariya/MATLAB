clc
clear all
n=input('enter the number of datapoint= ');
Y=zeros(n,n);
for i=1:n
    X(i)=input('enter the value of x='); %TAKE VALUE IN ROW    
    Y(i,1)=input('enter the value of y=');
        
end

k=0;
for i=2:n
    for j=1:n-i+1 %skip the last one in matrix
        num=(Y(j+1,i-1)-Y(j,i-1));
        den=(X(j+1+k)-X(j));
        Y(j,i)=num/den;
    end
    k=k+1;
end
x=input('enter the value of x=');
y=0;
r=1;
for i= 1:n
    if i>1
        r=r*(x-X(i-1));
    end
    y=y+(Y(1,i)*(r));
end
fprintf('value of y at x=%0.3f is %0.3f',x,y);