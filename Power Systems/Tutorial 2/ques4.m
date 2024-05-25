clc
clear all

%mesh analysis
%i=v*inv(r)

r =[4,-1,-3;-10,30,-5;-6,-1,13];
v=[1 0 0];
i=v*inv(r)
Irb=i(2)-i(1)     %current through resistance rb
Power=10*i(1)     %power supplied by 10V voltage source