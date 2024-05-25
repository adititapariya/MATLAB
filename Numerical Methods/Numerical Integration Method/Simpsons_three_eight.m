clc
clear all
f=@(x) exp(-x^2/2)/sqrt(2*pi);
p=input("enter the lower limit= ");
q=input("enter the upper limit= ");
i=input("enter the intervals= ");
h=(q-p)/i;
f0=f(p);
fn=f(q);

res=0;
k=1;
%simpson's third by eight rule
for j=p+h:h:q-h
    F=f(j);
    if rem(k,3)==0 
        res=res+2*F;
    else
        res=res+3*F;
    end
    k=k+1;
end
SimpThreeByEight = 3*h*(f0+res+fn)/8