 clc
 clear all
 
 n=input('interpolation polynomial order: ');    %1
 x=input('polynomial node values in ascending order: ');  %[15;20]
 y=input('enter y values: ');%[362.78;517.35]
 xg=input('Enter value of xg at which y is calculated: '); %16
 yf=0;
 A=zeros(n+1);
 B=zeros(n+1,1);
 C=zeros(n+1,1);
 
 for i=1:n+1
     for j=1:n+1
        A(i,j)=(x(i,1)^(j-1));
     end
     B=y;
 end
 A
 C=inv(A)*B

 for i=1:n+1
     yf=yf+C(i,1)*xg^(i-1);
 end
 fprintf('The value of yf at xg=%f is %f\n',xg,yf);