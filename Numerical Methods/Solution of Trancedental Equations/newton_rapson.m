clc
clear all

r=input("enter initial value: ");
syms f1(x);
f1(x) = (x^x)-1000;
f2=diff(f1,x)
t=1;
a=f1(r);
b=f2(r);
if b==0
   disp('FAILED!') 
else
    while t>0.0001
        rold=r;
        R=double(rold);
        r=r-(a/b);
        R1=double(r)
        t=abs((r-rold)/r);
        a=f1(r);
        b=f2(r);
        A=double(a)
        B=double(b)
    end
end
u= double(r)



