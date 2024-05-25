clc
clear all
f=@(x) exp((-x^2)/2)/sqrt(2*pi);
p=input("enter the lower limit= ");
q=input("enter the upper limit= ");
i=input("enter the intervals= ");
h=(q-p)/i;
f0=f(p);
fn=f(q);

res=0;
%trapezoidal method formula
for j=p+h:h:q-h
    F=f(j);
    res=res+2*F;
end
Trap = h*(f0+res+fn)/2