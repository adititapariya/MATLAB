clc
clear all

r=input("enter the ratio X/R: ");
Pr=input("enter the reactive power: ");
Pm=input("enter the meanb power: ");
Pa = input("enter the apparent power: ");
E= input("enter voltage: ");
V= input("enter voltage: ");

Z= V^2/Pa
R=Z/sqrt(r^2+1)
X=r*R

 %E^2*V^2-V^2 - Pm^2*(R^2+X^2) = Q^2 *(X^2 + R^2) + 2*V*(R*Pm+X*Q)
 a=(2*R*Pm-E^2+V^2)*V^2 +R^2*Pm^2+X^2*Pm^2;
 b=2*V^2*X;
 c=(X^2 + R^2);
 
 p=[c b a];
 Q=max(roots(p))
 Qadd=Q-Pr
 
 