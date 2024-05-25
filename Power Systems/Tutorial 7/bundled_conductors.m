clc 
clear all

A=input('enter the value of radius and distance in m : ');
a=input('enter the number of conductors either 2 , 3 or 4 : ');
d=A(1);
r=A(2);
[c,l]= gmr1(a,d,r)
