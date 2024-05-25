clc 
clear all

%v*y = i   y is conductance 

y=[0.15,-0.1,-0.05; -0.1,0.145,-0.025;-0.05,-0.025 ,0.075];
i=[5;0;2];
v=inv(y)*i;     %basic formula
fprintf('Node voltages are \n v1=%3.3f   v2=%3.2f   v3=%3.1f  \n',v);
