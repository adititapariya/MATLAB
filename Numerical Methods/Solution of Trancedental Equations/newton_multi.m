clc
clear all

syms x1 x2 x3
% f1=@(x1,x2,x3) (3*x1-cos(x2*x3)-0.5);
% f2=@(x1,x2,x3) (x1^2-81*(x2+0.1)^2+sin(x3)+1.06);
% f3=@(x1,x2,x3) (exp(-x1*x2)+20*x3+(10*pi-3)/3);
f1(x1,x2,x3)=3*x1-cos(x2*x3)-0.5;
f2(x1,x2,x3)=x1^2-81*(x2+0.1)^2+sin(x3)+1.06;
f3(x1,x2,x3)=exp(-x1*x2)+20*x3+(10*pi-3)/3;

x=[-0.1;0.1;-0.1];
e=10^-10;
n=10;

f1x1(x1,x2,x3)=diff(f1,x1);
f1x2(x1,x2,x3)=diff(f1,x2);
f1x3(x1,x2,x3)=diff(f1,x3);
f2x1(x1,x2,x3)=diff(f2,x1);
f2x2(x1,x2,x3)=diff(f2,x2);
f2x3(x1,x2,x3)=diff(f2,x3);
f3x1(x1,x2,x3)=diff(f3,x1);
f3x2(x1,x2,x3)=diff(f3,x2);
f3x3(x1,x2,x3)=diff(f3,x3);

f11=matlabFunction(f1)
f12=matlabFunction(f2)
f13=matlabFunction(f3)

f1x11=matlabFunction(f1x1);
f1x22=matlabFunction(f1x2);
f1x33=matlabFunction(f1x3);

f2x11=matlabFunction(f2x1);
f2x22=matlabFunction(f2x2);
f2x33=matlabFunction(f3x3);

f3x11=matlabFunction(f3x1);
f3x22=matlabFunction(f3x2);
f3x33=matlabFunction(f3x3);

for i=1:n
    F=[f11[x(1),x(2),x(3)]
while t1>10^-2 && t2>10^-2 && t3>10^-2
   
    P=f1(r1,r2,r3);
    Q=f2(r1,r2,r3);
    R=f3(r1,r2,r3);
    
    a=f11(r1,r2,r3);
    b=f12(r1,r2,r3);
    c=f13(r1,r2,r3);
    d=f21(r1,r2,r3);
    e=f22(r1,r2,r3);
    f=f23(r1,r2,r3);
    g=f31(r1,r2,r3);
    h=f32(r1,r2,r3);
    i=f33(r1,r2,r3);
    A=[a,b,c;d,e,f;g,h,i];
    B=[P;Q;R];
    C=B*inv(A);
    U=double (C);
    U;
    r1old=r1;
    r2old=r2;
    r3old=r3;

    r1=r1+C(1,1);
    r2=r2+C(2,1);
    r3=r3+C(3,1);

    t1=abs((r1-r1old)/r1);
    t2=abs((r2-r2old)/r2);
    t3=abs((r3-r3old)/r3);

end
r1
r2
r2

