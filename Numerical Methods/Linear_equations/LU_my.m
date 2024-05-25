clc
clear all

a=input("enter the first matrix: ");
b=input("enter the second matrix: ");
[L U]=lu(a);
L
U

Y=inv(L)*b
X=inv(U)*Y


            


