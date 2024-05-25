clc
clear all

x=[4 ;7; 9; 12]
y=[-43; 83; 327 ;1053]

A= zeros(4,3);
B=[x y A]  ; 
a=2;
b=1;
for i =3:5
    for j=1:3
       if j+b <=4
       B(j,i)=(B(j+1,i-1)-B(j,i-1))/(-B(j,i-a)+B(j+b,i-a));
       end
    end
    j=j-1;
    a=a+1;
    b=b+1;
end
B

sum=B(1,2);
w=input("enter the value at which you want result: ");
for k=1:4
    product=1;
    for h=1:k
         product=product*(w-B(h,1));
    end
      if k <4
        sum=sum+product*(B(1,k+2));
      end
end
sum