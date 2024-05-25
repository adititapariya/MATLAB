clc
clear all

A= input('enter the coefficient matrix A:');
B= input('enter source vector:');

maxerr=1e-3;
x=zeros(1,size(A,1));
n=size(A,1);
err=Inf;
itr=0;

while all(err>maxerr)
    xold=x;
    for i=1:n
        sum=0;
        for j=1:n
            if j~=i
                sum = sum +A(i,j)*xold(j);
            end
        end
         x(i)=(B(i)-sum)/A(i,i);
    end
    itr=itr+1;
    y(itr,:)=x;
    err=abs(xold-x);
    for k=1:n
        if xold(k)==x(k)
        err(k)=1;
        end
    end
    x
end
err
fprintf('method converges in %d iteration.',itr);
x
 
        
