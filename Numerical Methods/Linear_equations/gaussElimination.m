clc
clear all

a=input("coefficient of equation: ");
b=input("constants: ");
% a=[2,3,1;1,2,3;3,1,2];
% b=[9;6;8];
ab=[a b]
n1=size(ab)
n=n1(1);
n2=n1(2);
x=zeros(n,1);
for k=1:n
    for i=k+1:n
        m=ab(i,k)/ab(k,k);
        for j=k:n2
            ab(i,j)=ab(i,j)-(m*ab(k,j));
        end
    end
end  
disp(ab);
for i=n:-1:1
    sum=0;
    for j=i+1:n
        if (j<=3)
        sum =sum +ab(i,j)*x(j);
        end
    end
    x(i)=(ab(i,n2)-sum)/ab(i,i);
end
fprintf('\n solution is:');
disp(x);