clc 
clear all

A=input('enter the value of radius and distance in m : ');
a=input('enter the number of conductors either 2 , 3 or 4 : ');
d=A(1);
r=A(2);
disp('Non-Bundled conductors')
[c1,l1]= gmr(r)
disp('Bundled Conductors')
[c2,l2]= gmr1(a,d,r)